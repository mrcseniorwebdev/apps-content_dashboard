<script>
	import { onMount } from 'svelte';
	import NewAdSvg from './svgs/NewAdSvg.svelte';
	// import Trash21Svg from './svgs/Trash21Svg.svelte';
	import roleCheck from '$lib/utils/arrayIntersect.js';

	export let loggedInUserRoles;

	console.log({ loggedInUserRoles });

	const callbackUrlDomain =
		process.env.NODE_ENV === 'dev' ? 'http://localhost:3001' : 'https://apps.mrc.org';
	console.log({ callbackUrlDomain });
	let newUser = '';

	let roles = [];
	// export let data;

	// console.log({ 'data in settings': data });

	const getRoles = async () => {
		try {
			const response = await fetch(`${callbackUrlDomain}/contentdashboard/api/roles`);
			const rolesData = await response.json();
			roles = rolesData;
		} catch (err) {
			console.error(err);
			alert("Couldn't load roles, please email tech@mrc.org");
			return 0;
		}
	};
	const getUsers = async () => {
		try {
			const response = await fetch(`${callbackUrlDomain}/contentdashboard/api/user`);
			return await response.json();
		} catch (err) {
			console.error(err);
			alert("Couldn't load users, please email tech@mrc.org");
			return 0;
		}
	};
	// const deleteUsers = async (id) => {
	// 	try {
	// 		const response = await fetch(`${callbackUrlDomain}/contentdashboard/api/user/${id}`, {
	// 			method: 'DELETE'
	// 		});
	// 		return response;
	// 	} catch (err) {
	// 		console.error(err);
	// 		return 0;
	// 	}
	// };

	const modifyRole = async (checked, rid, uid) => {
		console.log('modifyRole', { checked, rid, uid });
		if (checked) {
			try {
				const response = await fetch(`${callbackUrlDomain}/contentdashboard/api/roles`, {
					method: 'POST',
					headers: {
						Accept: 'application/json',
						'Content-type': 'application/json; charset=UTF-8' // Indicates the content
					},
					body: JSON.stringify({ rid, uid })
				});
				console.log({ 'modify role checked': response });
				if (response.status !== 200) {
					throw new Error('could not add role');
				}
			} catch (err) {
				console.error(err);
				alert("Couldn't add role, please email tech@mrc.org");
				return 0;
			}
		} else {
			try {
				const response = await fetch(`${callbackUrlDomain}/contentdashboard/api/roles`, {
					method: 'DELETE',
					headers: {
						Accept: 'application/json',
						'Content-type': 'application/json; charset=UTF-8' // Indicates the content
					},
					body: JSON.stringify({ rid, uid })
				});
				console.log({ 'modify role NOT checked': response });
				if (response.status !== 200) {
					throw new Error('could not delete role');
				}
			} catch (err) {
				console.error(err);
				alert("Couldn't delete role, please email tech@mrc.org");
				return 0;
			}
		}
	};

	let users = [];
	$: console.log({ users, roles });

	const updateUsers = async () => {
		const data = await getUsers();
		if (data) {
			users = data;
		}
	};

	onMount(async () => {
		await updateUsers();
		await getRoles();
	});

	const addNewUser = async () => {
		const mrcEmail = newUser.search(/@mrc\.org$/);
		console.log(mrcEmail);
		if (mrcEmail === -1) {
			alert('Email must be an mrc.org email!');
			return;
		}

		try {
			const response = await fetch(`${callbackUrlDomain}/contentdashboard/api/user`, {
				method: 'POST',
				headers: {
					Accept: 'application/json',
					'Content-type': 'application/json; charset=UTF-8' // Indicates the content
				},
				body: JSON.stringify({ email: newUser })
			});
			await updateUsers();
			newUser = '';
		} catch (err) {
			console.error(err);
			return 0;
		}
	};
	// const removeUser = async (user) => {
	// 	let confirm = window.confirm(`Are you sure you want to delete:\n\n${user.email}`);
	// 	if (confirm) {
	// 		const res = await deleteUsers(user.uid);
	// 		if (res.status !== 204) {
	// 			alert('some sort of delete error, email tech');
	// 			return;
	// 		}
	// 		await updateUsers();
	// 	}
	// };
</script>

<div class="users">
	<h1>Allowed Users</h1>
	<p>Enter the mrc.org emails for users who can access this app:</p>
	<div class="users--grid">
		{#each users as user}
			<div class="users--grid--user">
				<p>{user.email}</p>
				<!-- <button on:click={() => removeUser(user)}><Trash21Svg /></button> -->

				{#if roleCheck(loggedInUserRoles, ['admin'])}
					<div class="users--grid--user--rolegrid">
						{#each roles as role}
							<div class="users--grid--user--rolegrid--input">
								<input
									type="checkbox"
									id={user.email + role.role_label}
									checked={user.roles.includes(role.role_label)}
									on:change={(e) => modifyRole(e.target.checked, role.rid, user.uid)}
								/>
								<label for={user.email + role.role_label}>{role.role_label}</label>
							</div>
						{/each}
					</div>
				{/if}
			</div>
		{/each}
	</div>
	{#if roleCheck(loggedInUserRoles, ['admin'])}
		<div class="users--newuser">
			<input bind:value={newUser} placeholder="Enter Email..." />
			<button on:click={addNewUser} class=""><NewAdSvg /><span>Grant Access</span></button>
		</div>
	{/if}
</div>

<style lang="scss">
	.users {
		background: var(--blue-grey-900);
		padding: 2rem;
		border-radius: 1rem;
		h1 {
			margin: 0;
			margin-bottom: 1.5rem;
			color: var(--blue-grey-050);
			// color: rgba(255, 255, 255, 1);
		}
		p {
			margin: 0;
			margin-bottom: 2rem;
			color: var(--blue-grey-300);
			// color: rgba(255, 255, 255, 0.5);
			font-size: 1rem;
		}
		&--grid {
			display: grid;
			// grid-template-rows: repeat(5, 2rem);
			// grid-auto-flow: column;
			// grid-template-columns: repeat(4, 1fr);
			// grid-template-rows: 2rem;
			row-gap: 1rem;
			column-gap: 2rem;

			margin-bottom: 2rem;
			&--user {
				display: grid;
				// justify-content: space-between;
				// align-items: center;
				p {
					// color: rgba(255, 255, 255, 1);
					font-size: 1rem;
					margin: 0;
					color: var(--blue-grey-100);
				}
				&--rolegrid {
					display: flex;
					flex-wrap: wrap;
					row-gap: 0.5rem;
					column-gap: 0.5rem;
					&--input {
						display: flex;
						align-items: center;
						column-gap: 0.25rem;
						label {
							color: var(--blue-grey-500);
						}
					}
				}
				// button {
				// 	outline: none;
				// 	border: none;
				// 	background: none;
				// 	display: flex;
				// 	justify-content: center;
				// 	align-items: center;
				// 	cursor: pointer;
				// 	// &:hover {
				// 	// 	svg {
				// 	// 		opacity: 0.5;
				// 	// 	}
				// 	// }
				// }
			}
		}
		&--newuser {
			align-items: stretch;
			display: grid;
			row-gap: 0.25rem;
			@media screen and (min-width: 500px) {
				display: flex;
			}
			input {
				font-size: 1rem;
				padding: 0.3em 0.5em;
				outline: none;
				margin: 0;
			}
			button {
				background: #0f8613;
				color: white;
				font-size: 1rem;
				display: flex;
				align-items: center;
				font-weight: bold;
				border: none;
				outline: none;
				cursor: pointer;
				padding: 0 1rem;
				@media screen and (min-width: 500px) {
					border-top-right-radius: 0.25rem;
					border-bottom-right-radius: 0.25rem;
				}
				&:hover {
					background: darken(#0f8613, 5%);
				}
			}
		}
	}
</style>
