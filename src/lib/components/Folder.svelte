
<script>
    import Draggable from "./Draggable.svelte";
    export let top = 100;
    export let left = 100;
    export let folderName = "name";
    
</script>
<Draggable {top} {left}>
    <div class="absolute z-10 mt-3 mr-10 draggable" >
        <div class="flex relative flex-col gap-1">
            <img src="/img/folder.svg" class="h-8" alt="folder icon"> 
            <p class="font-fira fon-thin text-[1rem] text-center text-white/40">{folderName}</p>
        </div>
    </div>
</Draggable>