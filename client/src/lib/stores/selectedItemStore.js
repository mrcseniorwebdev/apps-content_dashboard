import { writable } from 'svelte/store';

export const sectionFilter = writable('all')
export const severityFilter = writable('all')
export const pageFilter = writable('dashboard')