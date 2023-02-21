<script>
	import { severityFilter } from '$lib/stores/selectedItemStore.js';

	let filter;
	severityFilter.subscribe((elem) => {
		filter = elem;
	});

	const handleFilterChange = (key) => {
		console.log({ key });
		severityFilter.update((n) => key);
	};

	console.log({ severityFilter: filter });
</script>

<div class="severityFilter">
	<ul>
			<li class:active={filter == 'all'}>
				<button on:click={() => handleFilterChange('all')}>
					All
				</button>
			</li>
			<li class:active={filter == 0}>
				<button on:click={() => handleFilterChange(0)}>
					Regular
				</button>
			</li>
			<li class:active={filter == 1}>
				<button on:click={() => handleFilterChange(1)}>
					Timely
				</button>
			</li>
			<li class:active={filter == 2}>
				<button on:click={() => handleFilterChange(2)}>
					Breaking
				</button>
			</li>
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
