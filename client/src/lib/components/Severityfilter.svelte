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
	<label for="severityFilter">Severity:</label>

	<select
		id="severityFilter"
		bind:value={filter}
		on:change={(e) => handleFilterChange(e.target.value)}
	>
		<option value="all">All</option>
		<option value="2">Breaking</option>
		<option value="1">Timely</option>
		<option value="0">Regular</option>
	</select>
	<ul>
		<li class:active={filter == 'all'}>
			<button on:click={() => handleFilterChange('all')}> All </button>
		</li>
		<li class:active={filter == 2}>
			<button on:click={() => handleFilterChange(2)}> Breaking </button>
		</li>
		<li class:active={filter == 1}>
			<button on:click={() => handleFilterChange(1)}> Timely </button>
		</li>
		<li class:active={filter == 0}>
			<button on:click={() => handleFilterChange(0)}> Regular </button>
		</li>
	</ul>
</div>

<style lang="scss">
	.severityFilter {
		display: grid;
		// width: 100%;
		text-align: center;
		row-gap: 0.25rem;
		label {
			@media screen and (min-width: 1555px) {
				display: none;
			}
		}
	}
	ul {
		display: none;
		list-style: none;
		// display: grid;
		@media screen and (min-width: 1555px) {
			display: flex;
		}
		li {
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
				width: 7.5rem;
				padding: 1rem 0;
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

	select {
		text-align: center;
		font-size: 1rem;
		padding: 0.25rem 0;
		@media screen and (min-width: 1555px) {
			display: none;
		}
	}
</style>
