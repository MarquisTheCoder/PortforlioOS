
<script>
    export let image = '';
    export let description = '';
    export let link = '';
</script>


<div class="p-6 w-[14rem] h-[15rem] rounded-lg
border-[0.2rem] border-purple-500/50 border-dotted border-spacing-6">
    <div class="h-[40%] w-full overflow-hidden relative">
        <img src="{image}" alt="project_image" class="absolute top-0 left-0">
    </div>
    <slot/>
</div>