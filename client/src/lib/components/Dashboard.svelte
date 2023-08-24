<script>
	import { sectionFilter, severityFilter, statusFilter } from '$lib/stores/selectedItemStore.js';
	import { onMount } from 'svelte';
	import { tooltip } from '$lib/utils/tooltip';
	//import flip animation from svelte
	import { flip } from 'svelte/animate';
	import Breaking from '$lib/components/svgs/Breaking.svelte';
	import Facebook from '$lib/components/svgs/Facebook.svelte';
	import Draft from '$lib/components/svgs/Draft.svelte';
	import Published from '$lib/components/svgs/Published.svelte';
	import Timely from '$lib/components/svgs/Timely.svelte';
	import Twitter from '$lib/components/svgs/Twitter.svelte';
	import roleCheck from '$lib/utils/arrayIntersect.js';

	const callbackUrlDomain =
		process.env.NODE_ENV === 'dev' ? 'http://localhost:3001' : 'https://apps.mrc.org';
	console.log({ callbackUrlDomain });

	const socketPath =
		process.env.NODE_ENV === 'dev' ? 'http://localhost:3001/' : '/contentdashboard/socketio';

	export let loggedInUserRoles;

	let filter_section;
	let filter_severity;
	let filter_status;
	sectionFilter.subscribe((elem) => {
		filter_section = elem;
	});
	severityFilter.subscribe((elem) => {
		filter_severity = elem;
	});
	statusFilter.subscribe((elem) => {
		filter_status = elem;
	});

	let content_data = [];

	$: filtered_data = content_data.filter((elem) => {
		console.log({ filter_status, 'elem.status': elem.status, elem });
		let filterSection = filter_section == 'all' || filter_section == elem.section;
		let filterSeverity = filter_severity == 'all' || filter_severity == elem.severity;
		let filterStatus = filter_status == 'all' || filter_status == elem.published;

		return filterSection && filterSeverity && filterStatus;
	});

	onMount(() => {
		try {
			// console.log(io());
			const socket =
				process.env.NODE_ENV === 'dev' ? io('http://localhost:3001/') : io({ path: socketPath });
			// const socket = io({path: socketPath});
			// const socket = io('/contentdashboard/socket.io');
			// const socket = io('wss://apps.mrc.org/contentdashboard/socket.io');
			socket.on('update_items', (data) => {
				console.log({ data });
				content_data = data;
			});
		} catch (err) {
			console.log('erra');
			console.error(err);
		}
	});
	console.log('3', content_data);

	const handleDelete = async (objToDelete) => {
		let confirm = window.confirm(`Are you sure you want to delete:\n\n${objToDelete.title}`);
		if (confirm) {
			console.log(objToDelete);
			await fetch(`${callbackUrlDomain}/contentdashboard/api/post`, {
				method: 'DELETE',
				headers: {
					Accept: 'application/json',
					'Content-type': 'application/json; charset=UTF-8' // Indicates the content
				},
				body: JSON.stringify(objToDelete)
			});
		}
	};

	const handleSocial = async (objToPatch, key) => {
		if (objToPatch.social_media.includes(key)) {
			objToPatch.social_media = objToPatch.social_media.filter((elem) => elem != key);
		} else {
			objToPatch.social_media.push(key);
		}
		await fetch(`${callbackUrlDomain}/contentdashboard/api/post`, {
			method: 'PATCH',
			headers: {
				Accept: 'application/json',
				'Content-type': 'application/json; charset=UTF-8' // Indicates the content
			},
			body: JSON.stringify(objToPatch)
		});
	};
</script>

<div class="grid">
	<div class="header grid--row">
		<div class="grid--row--data" />
		<div class="grid--row--data" />
		<div class="grid--row--data">
			<span>Title/Author</span>
		</div>
		<div class="grid--row--data">
			<span>Time/Day</span>
		</div>
		<div class="grid--row--data">
			<span>Status</span>
		</div>
		{#if roleCheck(loggedInUserRoles, ['admin', 'marketing'])}
			<div class="grid--row--data">
				<span>Social Media</span>
			</div>
			<div class="grid--row--data">
				<span>Remove</span>
			</div>
		{/if}
	</div>
	<!-- <div class="grid--row"> -->
	{#each filtered_data as content (content.id)}
		<div animate:flip={{ duration: 1500 }} class="grid--row">
			<div class="grid--row--data section">
				<span
					class={`divisionCircle ${content.section}`}
					title={content.section.toUpperCase()}
					use:tooltip
				/>
				<span class="label">{content.section.toUpperCase()}</span>
			</div>

			<div class:mobileHide={content.severity == 0} class="grid--row--data severity">
				<!-- If Breaking -->

				{#if content.severity == 2}
					<Breaking />
				{:else if content.severity == 1}
					<Timely />
				{/if}
			</div>
			<div class="grid--row--data titleAuthor">
				<a href={content.link} target="_blank" rel="noreferrer" class="title">{content.title}</a>
				<span class="author">{content.author}</span>
			</div>
			<div class="grid--row--data dateTime">
				<span class="time">{content.time}</span>
				<span class="date">{content.date}</span>
			</div>
			<div class="grid--row--data state">
				{#if content.published === 1}
					<Published />
					<span>Published</span>
				{:else}
					<Draft />
					<span>Draft</span>
				{/if}
			</div>
			{#if roleCheck(loggedInUserRoles, ['admin', 'marketing'])}
				<div class="grid--row--data socialWrapper">
					<div class={`socials ${content.social_media.join(' ')}`}>
						<div class="facebook">
							<Facebook />
							<ul>
								<li>
									<button id="fnb" on:click={() => handleSocial(content, 'fnb')}>NewsBusters</button
									>
								</li>
								<li>
									<button id="fcns" on:click={() => handleSocial(content, 'fcns')}>CNSNews</button>
								</li>
								<li>
									<button id="ftv" on:click={() => handleSocial(content, 'ftv')}>MRCTV</button>
								</li>
								<li>
									<button id="ffsa" on:click={() => handleSocial(content, 'ffsa')}>FSAM</button>
								</li>
								<li>
									<button id="fmrc" on:click={() => handleSocial(content, 'fmrc')}>MRC</button>
								</li>
							</ul>
						</div>
						<div class="twitter">
							<Twitter />
							<ul>
								<li>
									<button id="tnb" on:click={() => handleSocial(content, 'tnb')}>NewsBusters</button
									>
								</li>
								<li>
									<button id="tcns" on:click={() => handleSocial(content, 'tcns')}>CNSNews</button>
								</li>
								<li>
									<button id="ttv" on:click={() => handleSocial(content, 'ttv')}>MRCTV</button>
								</li>
								<li>
									<button id="tfsa" on:click={() => handleSocial(content, 'tfsa')}>FSAM</button>
								</li>
								<li>
									<button id="tmrc" on:click={() => handleSocial(content, 'tmrc')}>MRC</button>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="grid--row--data remove">
					<button on:click={() => handleDelete(content)}>REMOVE</button>
				</div>
			{/if}
		</div>
	{/each}
</div>

<style lang="scss">
	.grid {
		display: grid;
		// display: inline-grid;
		// width: 100%;
		text-align: left;
		overflow-y: auto;
		border-radius: 1rem;
		overflow-x: hidden;
		border: 2px solid var(--blue-grey-300);
		align-content: start;
		@media screen and (min-width: 1555px) {
			height: calc(100vh - 120px - 3rem - 2rem);
		}
		&::-webkit-scrollbar {
			display: block;
			width: 5px;
		}
		&::-webkit-scrollbar-track {
			background: transparent;
		}

		&::-webkit-scrollbar-thumb {
			background-color: var(--blue-grey-600);
			// background-color: var(--pink-vivid-700);
			border-right: none;
			border-left: none;
			border-radius: 100vw;
		}

		&::-webkit-scrollbar-track-piece:end {
			background: transparent;
			margin-bottom: 1rem;
		}

		&::-webkit-scrollbar-track-piece:start {
			background: transparent;
			margin-top: 65px;
		}
		&--row {
			display: flex;
			flex-direction: column;
			// grid-template-columns: auto auto 60ch auto auto 1fr;
			padding: 1.5rem 1rem;
			column-gap: 2rem;
			align-items: center;
			text-align: center;
			row-gap: 1rem;
			@media screen and (min-width: 1235px) {
				display: grid;
				grid-template-areas:
					'div title social del'
					'severity title social del'
					'status datetime social del';
				grid-template-columns: 6.3rem 60ch auto 1fr;
				text-align: left;
			}
			@media screen and (min-width: 1555px) {
				// display: grid;
				grid-template-areas: unset;
				grid-template-columns: 14px 19px 60ch 9rem 9rem 23rem 1fr;
				// text-align: left;
			}
			&:nth-child(odd) {
				background: white;
			}
			&:nth-child(even) {
				background: var(--blue-grey-050);
			}

			&.header {
				color: var(--blue-grey-500);
				position: sticky;
				top: 0;
				z-index: 1;

				border-bottom: 1px solid var(--blue-grey-200);
				padding: 1rem;
				display: none;
				@media screen and (min-width: 1555px) {
					display: grid;
				}
				button {
					color: inherit;
					background: none;
					border: none;
					outline: none;
					font-size: 1rem;
				}
			}

			&--data {
				// padding: 1rem;
				display: flex;
				// justify-content: center;
				align-items: center;
				position: relative;
				// text-align: center;

				&.section {
					display: flex;
					column-gap: 0.5rem;
					// justify-content: center;
					// align-items: center;
					@media screen and (min-width: 1235px) {
						grid-area: div;
					}
					@media screen and (min-width: 1555px) {
						grid-area: unset;
					}
					.divisionCircle {
						width: 14px;
						aspect-ratio: 1;
						border-radius: 100%;
						background-color: black;
						&.nb {
							background-color: var(--nb);
						}
						&.cns {
							background-color: var(--cns);
						}
						&.tv {
							background-color: var(--tv);
						}
						&.culture {
							background-color: var(--culture);
						}
						&.business {
							background-color: var(--business);
						}
						&.latino {
							background-color: var(--latino);
						}
						&.free {
							background-color: var(--fsam);
						}
					}
					.label {
						color: var(--blue-grey-400);

						@media screen and (min-width: 1555px) {
							display: none;
						}
					}
				}

				&.severity {
					@media screen and (min-width: 1235px) {
						grid-area: severity;
					}
					@media screen and (min-width: 1555px) {
						grid-area: unset;
					}
					&.mobileHide {
						@media screen and (max-width: 1235px) {
							display: none;
						}
					}
					& > div {
						display: flex;
					}
				}

				&.titleAuthor {
					display: flex;
					flex-direction: column;
					align-items: center;
					// align-items: flex-start;
					justify-content: center;
					// row-gap: 0.25rem;
					font-size: 0.875rem;
					@media screen and (min-width: 1235px) {
						grid-area: title;
						align-items: flex-start;
						align-self: flex-start;
					}
					@media screen and (min-width: 1555px) {
						grid-area: unset;
						align-self: center;
					}
					.title {
						text-decoration: none;
						color: var(--blue-grey-900);
						font-weight: bold;
						line-height: 1.125rem;
						max-width: 60ch;
						margin: 0 auto;
						@media screen and (min-width: 1235px) {
							max-width: 100%;
							margin: unset;
						}
						&:hover {
							text-decoration: underline;
						}
					}
					.author {
						color: var(--blue-grey-400);
					}
				}

				&.dateTime {
					display: flex;
					flex-direction: column;
					align-items: center;
					// align-items: flex-start;
					justify-content: center;
					// row-gap: 0.25rem;
					// row-gap: 0.5rem;
					@media screen and (min-width: 1235px) {
						grid-area: datetime;
						// align-items: flex-start;
						justify-content: flex-start;
						align-items: baseline;
						flex-direction: row;
						column-gap: 0.5rem;
					}
					@media screen and (min-width: 1555px) {
						grid-area: unset;
						flex-direction: column;
					}
					.time {
						font-size: 1rem;
						color: var(--blue-grey-900);
					}
					.date {
						font-size: 0.875rem;
						color: var(--blue-grey-400);
					}
				}

				&.state {
					display: flex;
					column-gap: 0.5rem;
					@media screen and (min-width: 1235px) {
						grid-area: status;
					}
					@media screen and (min-width: 1555px) {
						grid-area: unset;
					}
					span {
						font-size: 1rem;
						color: var(--blue-grey-400);
					}
				}

				&.socialWrapper {
					@media screen and (min-width: 1235px) {
						grid-area: social;
					}
					@media screen and (min-width: 1555px) {
						grid-area: unset;
					}
					.socials {
						display: flex;
						flex-direction: column;
						align-items: flex-start;
						justify-content: center;
						row-gap: 0.5rem;
						& > div {
							display: flex;
							column-gap: 1rem;
							flex-direction: column;
							align-items: center;
							row-gap: 0.25rem;
							@media screen and (min-width: 444px) {
								flex-direction: row;
							}
							ul {
								list-style: none;
								display: flex;
								justify-content: center;
								flex-wrap: wrap;
								column-gap: 1rem;
								li {
									button {
										background: none;
										cursor: pointer;
										border: none;
										outline: none;
										color: var(--blue-grey-400);
									}
								}
							}
						}
						&.fnb {
							#fnb {
								font-weight: bold;
								color: var(--nb);
							}
						}
						&.fcns {
							#fcns {
								font-weight: bold;
								color: var(--cns);
							}
						}
						&.ftv {
							#ftv {
								font-weight: bold;
								color: var(--tv);
							}
						}
						&.ffsa {
							#ffsa {
								font-weight: bold;
								color: var(--fsam);
							}
						}
						&.fmrc {
							#fmrc {
								font-weight: bold;
								color: var(--mrc);
							}
						}
						&.tnb {
							#tnb {
								font-weight: bold;
								color: var(--nb);
							}
						}
						&.tcns {
							#tcns {
								font-weight: bold;
								color: var(--cns);
							}
						}
						&.ttv {
							#ttv {
								font-weight: bold;
								color: var(--tv);
							}
						}
						&.tfsa {
							#tfsa {
								font-weight: bold;
								color: var(--fsam);
							}
						}
						&.tmrc {
							#tmrc {
								font-weight: bold;
								color: var(--mrc);
							}
						}
					}
				}

				&.remove {
					@media screen and (min-width: 1235px) {
						grid-area: del;
						// justify-content: flex-end;
					}
					@media screen and (min-width: 1555px) {
						grid-area: unset;
					}
					button {
						border: none;
						outline: none;
						background: none;
						color: var(--red-vivid-600);
						font-size: 0.75rem;
						cursor: pointer;
						&:hover {
							text-decoration: underline;
						}
					}
				}
			}
		}
	}
</style>
