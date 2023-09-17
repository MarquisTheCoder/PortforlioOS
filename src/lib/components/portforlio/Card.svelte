
<script>
    export let image = '';
    export let name = '';
    export let description = '';
    export let link = '';
    export let active = false;
    export let stack = [""];
    import StackIcons from "./StackIcons.svelte";
</script>

<div class="w-[20rem] h-[20rem] rounded-lg bg-black/60 backdrop-blur-md m-0 shrink-0 relative">
    <div class="absolute top-5 right-5 z-20 text-white active-or-not">
        {#if active == true}
            <a href="{link}" target="_blank">
                <p class="z-20 px-3 py-1 bg-green-500 rounded-md animate-pulse">Live</p>
            </a>
        {:else}
            <p class="z-20 px-3 py-1 bg-red-500 rounded-md">Down</p>
        {/if}
    </div>
    <div class="h-[50%] w-full overflow-hidden relative">
        <img src="{image}" alt="project_image" class="absolute top-0 left-0 h-full rounded-t-lg shrink-0"
        style="height: auto; width: 150%;">
    </div>
    <div class="py-2 w-full text-center bg-black/80">
        <h1  class="text-[1.3rem] font-bold font-mira text-purple-400/80">{name}</h1>
    </div>
    <div class="h-[20%] w-full overflow-scroll bg-black/60 font-mira text-purple-200/70 px-4 text-center font-thin no-scrollbar">
        {description}
    </div>
    <div class="h-[15%] w-full bg-black rounded-b-lg">
        <ul class="flex overflow-y-hidden overflow-x-scroll flex-row gap-4 justify-start items-center px-3 py-1 w-full h-full no-scrollbar">
            {#each stack as tool}
                <li><StackIcons name={tool}/></li>
            {/each}
        </ul>
    </div>
</div>