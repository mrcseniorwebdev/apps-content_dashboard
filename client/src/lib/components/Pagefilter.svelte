<script>
	import { pageFilter } from '$lib/stores/selectedItemStore.js';

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
		<li class:active={filter == 'settings'}>
			<button on:click={() => handleFilterChange('settings')}> Settings </button>
		</li>
		<li>
			<a href="/contentdashboard/logout">Logout</a>
		</li>
	</ul>
</div>

<style lang="scss">
	ul {
		list-style: none;
		// display: grid;
		display: flex;
        column-gap: 1.25rem;
		li {
            display: flex;
            justify-content: center;
            align-items: center;

            padding: 0.5rem 1.2rem;
            &.active{
                background-color: var(--blue-grey-100);
                border-radius: 100vw;
                button{
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
