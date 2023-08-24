<script>
	import { statusFilter } from '$lib/stores/selectedItemStore.js';

	let filter;
	statusFilter.subscribe((elem) => {
		filter = elem;
	});

	const handleFilterChange = (key) => {
		console.log({ key });
		statusFilter.update((n) => key);
	};

	console.log({ statusFilter: filter });
</script>

<div class="statusFilter">
	<label for="statusFilter">Status:</label>
	<select id="statusFilter" bind:value={filter} on:change={(e) => handleFilterChange(e.target.value)}>
		<option value="all">All</option>
		<option value="1">Published</option>
		<option value="0">Draft</option>
	</select>
	<ul>
		<li class:active={filter == 'all'}>
			<button on:click={() => handleFilterChange('all')}> All </button>
		</li>
		<li class:active={filter == 1}>
			<button on:click={() => handleFilterChange(1)}> Published </button>
		</li>
		<li class:active={filter == 0}>
			<button on:click={() => handleFilterChange(0)}> Draft </button>
		</li>
	</ul>
</div>

<style lang="scss">
	.statusFilter{
		display: grid;
		width: 100%;
		text-align: center;
		row-gap: .25rem;
		label {
			@media screen and (min-width: 1555px) {
				display: none;
			}
		}
	}
	ul {
		list-style: none;
		// display: grid;
		display: none;
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
		padding: .25rem 0;
		option{
			text-align: center;
			
		}
		@media screen and (min-width: 1555px) {
			display: none;
		}
	}
</style>
