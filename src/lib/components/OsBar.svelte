

<script>

    export let position = 'bottom';
    export let height = 2 
</script>



{#if position == "bottom"}
<div class="flex overflow-x-scroll absolute z-50 flex-row justify-between items-center px-4 w-screen bg-gradient-to-r backdrop-blur-md md:overflow-hidden no-scrollbar max-w-screen from-black/40 via-black/60 to-black/80 min-h-10" 
    style="bottom: 0px; left: 0px; height: {height}rem">
    <slot/>
</div>
{:else}
<div class="flex overflow-x-scroll absolute z-50 flex-row justify-start items-center px-4 w-screen bg-gradient-to-r backdrop-blur-md no-scrollbar md:overflow-hidden md:justify-between max-w-screen from-black/40 via-black/60 to-black/80 min-h-10" 
    style="top: 0px; left: 0px; height: {height}rem">
    <slot/>
</div>
{/if}

<style>
    .no-scollbar{
     -ms-overflow-style: none;  /* Internet Explorer 10+ */
    scrollbar-width: none; 
    }

</style>