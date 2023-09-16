<script>
	import Path from "./Path.svelte";
	import TerminalTitle from "./TerminalTitle.svelte";	
	import Draggable from "./Draggable.svelte"; 
    export let windowTitle = 'Window Name';
    export let left = 250;
    export let top = 50;
    export let height="30rem";
    export let width="18rem"; 
    let moving = false;
    export let windowClasses = '';
	   
  </script>
  
  <Draggable 
    classes={`window z-20 draggable no-scroll bg-gradient-to-b
    from-black/50 via-black/40 to-black/30 backdrop-blur-lg 
    rounded-md shadow-[0_35px_60px_-15px_rgba(0,0,0,0.3)] flex flex-col 
    ${windowClasses} top`}
    top={top}
    left={left}
    height={height}
    width={width}
  >
  <TerminalTitle titleName={windowTitle}/>
  <!-- entry point -->
	<slot/>
</Draggable>


