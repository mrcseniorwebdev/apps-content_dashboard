<script>
	import { page } from '$app/stores';
	import Pagefilter from '$lib/components/Pagefilter.svelte';
	import Sectionfilter from '$lib/components/Sectionfilter.svelte';
	import Severityfilter from '$lib/components/Severityfilter.svelte';
	import StatusFilter from '$lib/components/StatusFilter.svelte';
	import Dashboard from '$lib/components/Dashboard.svelte';
	import Settings from '$lib/components/Settings.svelte';
	console.log(page);

	export let data;

	console.log(data);

	import { pageFilter } from '$lib/stores/selectedItemStore.js';

	let pageToShow;
	pageFilter.subscribe((elem) => {
		pageToShow = elem;
	});
</script>

<div class="layout">
	<header>
		<h1>Content Dashboard</h1>
		<div class="toplineFilterLabel">
			<!-- <div class="label">Filters:</div> -->
			<Severityfilter />
			<StatusFilter />
		</div>
		<Pagefilter loggedInUserRoles={data.user.roles} />
		<Sectionfilter />
	</header>
	<main>
		{#if pageToShow == 'dashboard'}
			<Dashboard loggedInUserRoles={data.user.roles} />
		{:else}
			<Settings loggedInUserRoles={data.user.roles} />
		{/if}
	</main>
</div>

<style lang="scss">
	.layout {
		padding: 1rem;
		display: grid;
		// grid-template-rows: 120px 1fr;
		row-gap: 3rem;
		@media screen and (min-width: 1555px) {
			grid-template-rows: 120px 1fr;
			min-width: 100vw;
			height: 100vh;
		}
	}
	header {
		display: flex;
		flex-direction: column;
		align-items: center;

		@media screen and (min-width: 768px) {
			display: grid;
			grid-template-areas:
				'title title title'
				'page page page'
				'top top bottom';

			grid-template-columns: repeat(3, 1fr);
		}
		@media screen and (min-width: 1555px) {
			// display: grid;
			grid-template-columns: auto 1fr;
			grid-template-areas: unset;
			align-items: flex-end;
			row-gap: 1.5rem;
		}
		column-gap: 3rem;
		row-gap: 1rem;
		h1 {
			font-size: 1.5rem;
			color: var(--blue-grey-900);
			font-weight: normal;
			order: 1;
			@media screen and (min-width: 768px) {
				grid-area: title;
				text-align: center;
			}
			@media screen and (min-width: 1555px) {
				font-size: 2.25rem;
				order: unset;
				grid-area: unset;
			}
		}
		.toplineFilterLabel {
			// display: flex;
			display: grid;
			column-gap: 3rem;
			order: 3;
			width: 100%;
			row-gap: 1rem;
			@media screen and (min-width: 768px) {
				grid-area: top;
				grid-template-columns: 1fr 1fr;

			}
			@media screen and (min-width: 1555px) {
				order: unset;
				display: flex;
				grid-area: unset;

			}
			// .label {
			// 	font-size: 2.25rem;
			// 	color: var(--blue-grey-500);
			// 	font-weight: normal;
			// }
		}
	}
	main {
		// display: none;
	}
</style>
