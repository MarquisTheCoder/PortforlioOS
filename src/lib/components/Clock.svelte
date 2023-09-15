
<script>

    import { onMount } from 'svelte';
    let time = new Date();
// changes, because of the `$:` prefix
	$: hours = time.getHours();
	$: minutes = time.getMinutes();
	$: seconds = time.getSeconds()

    onMount(() => {
		const interval = setInterval(() => {
			time = new Date();
		}, 1000);

		return () => {
			clearInterval(interval);
		};
	});
    // these automatically update when `time`
	;
</script>

<div>
    <p class="font-fira font-thin text-[1.rem] text-white">{hours}:{minutes}:{seconds}</p>
</div>