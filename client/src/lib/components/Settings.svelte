<script>
	import { onMount } from 'svelte';
	import NewAdSvg from './svgs/NewAdSvg.svelte';
	import Trash21Svg from './svgs/Trash21Svg.svelte';

	let newUser = '';

	const getUsers = async () => {
		try {
			const response = await fetch(`https://4602-8-18-52-2.ngrok.io/contentdashboard/api/user`);
			return await response.json();
		} catch (err) {
			console.error(err);
			alert("Couldn't load users, please email tech@mrc.org");
			return 0;
		}
	};
	const deleteUsers = async (id) => {
		try {
			const response = await fetch(
				`https://4602-8-18-52-2.ngrok.io/contentdashboard/api/user/${id}`,
				{
					method: 'DELETE'
				}
			);
			return response;
		} catch (err) {
			console.error(err);
			return 0;
		}
	};

	let users = [];

	const updateUsers = async () => {
		const data = await getUsers();
		if (data) {
			users = data;
		}
	};

	onMount(async () => {
		await updateUsers();
	});

	const addNewUser = async () => {
		const mrcEmail = newUser.search(/@mrc\.org$/);
		console.log(mrcEmail);
		if (mrcEmail === -1) {
			alert('Email must be an mrc.org email!');
			return;
		}

		try {
			const response = await fetch(`https://4602-8-18-52-2.ngrok.io/contentdashboard/api/user`, {
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
	const removeUser = async (user) => {
		let confirm = window.confirm(`Are you sure you want to delete:\n\n${user.email}`);
		if (confirm) {
			const res = await deleteUsers(user.uid);
			if (res.status !== 204) {
				alert('some sort of delete error, email tech');
				return;
			}
			await updateUsers();
		}
	};
</script>

<div class="users">
	<h1>Allowed Users</h1>
	<p>Enter the mrc.org emails for users who can access this app:</p>
	<div class="users--grid">
		{#each users as user}
			<div class="users--grid--user">
				<p>{user.email}</p>
				<button on:click={() => removeUser(user)}><Trash21Svg /></button>
			</div>
		{/each}
	</div>
	<div class="users--newuser">
		<input bind:value={newUser} placeholder="Enter Email..." />
		<button on:click={addNewUser} class=""><NewAdSvg /><span>Grant Access</span></button>
	</div>
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
			grid-template-rows: repeat(5, 2rem);
			grid-auto-flow: column;
			grid-template-columns: repeat(4, 1fr);
			// grid-template-rows: 2rem;
			row-gap: 1rem;
			column-gap: 2rem;

			margin-bottom: 2rem;
			&--user {
				display: flex;
				justify-content: space-between;
				align-items: center;
				p {
					// color: rgba(255, 255, 255, 1);
					font-size: 1rem;
					margin: 0;
				}
				button {
					outline: none;
					border: none;
					background: none;
					display: flex;
					justify-content: center;
					align-items: center;
					cursor: pointer;
					&:hover {
						svg {
							opacity: 0.5;
						}
					}
				}
			}
		}
		&--newuser {
			display: flex;
			align-items: stretch;
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
				border-top-right-radius: 0.25rem;
				border-bottom-right-radius: 0.25rem;
				&:hover {
					background: darken(#0f8613, 5%);
				}
			}
		}
	}
</style>
