<script>
	import { page } from '$app/stores';
	import Pagefilter from '$lib/components/Pagefilter.svelte';
	import Sectionfilter from '$lib/components/Sectionfilter.svelte';
	import Severityfilter from '$lib/components/Severityfilter.svelte';
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
		<Sectionfilter />
		<Pagefilter />
		<Severityfilter />
	</header>
	<main>
		{#if pageToShow == 'dashboard'}
			<Dashboard />
		{:else}
			<Settings />
		{/if}
	</main>
</div>

<style lang="scss">
	.layout {
		// min-width: 100vw;
		height: 100vh;
		padding: 1rem;
                display: grid;
                grid-template-rows: 120px 1fr;
                row-gap: 3rem;
	}
	h1 {
		font-size: 2.25rem;
		color: var(--blue-grey-900);
		font-weight: normal;
	}
	header {
		display: grid;
		grid-template-columns: auto 1fr;
		align-items: flex-end;
		column-gap: 3rem;
		row-gap: 1.5rem;
	}
</style>
