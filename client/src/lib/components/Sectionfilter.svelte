<script>
	let sectionMap = {
		all: 'All',
		nb: 'NewsBusters',
		cns: 'CNSNews',
		tv: 'MRCTV',
		'free speech': 'FSA',
		culture: 'Culture',
		business: 'Business',
		latino: 'Latino'
	};
	import { sectionFilter } from '$lib/stores/selectedItemStore.js';

	let filter;
	sectionFilter.subscribe((elem) => {
		filter = elem;
	});

	const handleFilterChange = (key) => {
		console.log({ key });
		sectionFilter.update((n) => key);
	};

	console.log({ filter });
</script>

<div class="sectionFilter">
	<ul>
		{#each Object.entries(sectionMap) as [key, value]}
			<li class:active={filter == key}>
				<button on:click={() => handleFilterChange(key)}>
					{value}
				</button>
			</li>
		{/each}
	</ul>
</div>

<style lang="scss">
	ul {
		list-style: none;
		// display: grid;
		display: flex;
		li {
			width: 7.5rem;
			padding: 1rem 0;
			display: flex;
			justify-content: center;
			align-items: center;
			position: relative;
            transition: all 300ms;
			&::after {
				position: absolute;
				content: '';
				bottom: 0;
				left: 0;
				width: 100%;
				height: 1px;
				border-radius: 4px;
				background-color: var(--blue-grey-300);
                transition: all 300ms;
			}
			button {
                transition: all 300ms;
                background: none;
				border: none;
				outline: none;
				color: var(--blue-grey-300);
				font-size: 0.875rem;
				cursor: pointer;
			}
			&.active {
                button {
                    color: var(--blue-grey-900);
                    font-weight: 600;
				}
				&::after {                    
                    height: 3px;
                    bottom: -1px;
					background-color: var(--magenta-600);
				}
			}
		}
	}
</style>
