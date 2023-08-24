<script>
	import { pageFilter } from '$lib/stores/selectedItemStore.js';
	import roleCheck from '$lib/utils/arrayIntersect.js';
	export let loggedInUserRoles;

	console.log({ loggedInUserRoles });

	let filter;
	pageFilter.subscribe((elem) => {
		filter = elem;
	});

	const handleFilterChange = (key) => {
		console.log({ key });
		pageFilter.update((n) => key);
	};

	console.log({ pageFilter: filter });
</script>

<div class="pageFilter">
	<ul>
		<li class:active={filter == 'dashboard'}>
			<button on:click={() => handleFilterChange('dashboard')}> Dashboard </button>
		</li>
		{#if roleCheck(loggedInUserRoles, ['admin', 'marketing'])}
			<li class:active={filter == 'settings'}>
				<button on:click={() => handleFilterChange('settings')}> Settings </button>
			</li>
		{/if}
		<li>
			<a href="/contentdashboard/logout">Logout</a>
		</li>
	</ul>
</div>

<style lang="scss">
	.pageFilter {
		order: 1;
		@media screen and (min-width: 768px) {
			grid-area: page;
			
		}
		@media screen and (min-width: 1555px) {
			order: unset;
			grid-area: unset;

		}
	}
	ul {
		list-style: none;
		// display: grid;
		display: flex;
		flex-wrap: wrap;
		justify-content: center;
		column-gap: 1.25rem;
		row-gap: 0.75rem;
		@media screen and (min-width: 1555px) {
			justify-content: flex-start;
		}
		li {
			display: flex;
			justify-content: center;
			align-items: center;

			padding: 0.5rem 1.2rem;
			&.active {
				background-color: var(--blue-grey-100);
				border-radius: 100vw;
				button {
					color: var(--blue-grey-900);
				}
			}
			button,
			a {
				background: none;
				border: none;
				outline: none;
				color: var(--blue-grey-300);
				font-size: 0.875rem;
				cursor: pointer;
				text-decoration: none;
				font-family: inherit;
			}
		}
	}
</style>
