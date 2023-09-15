<script>
	import Path from "./Path.svelte";
	import TerminalTitle from "./TerminalTitle.svelte";
	
	import Draggable from "./Draggable.svelte";
  
	  export let left = 250;
	  export let top = 50;
	  export let height="30rem";
	  export let width="18rem"; 
	  export let classes = '';
	  let moving = false;
	  
	  function onMouseDown() {
		  moving = true;
	  }
	  
	  function onMouseMove(e) {
		  if (moving) {
			  left += e.movementX;
			  top += e.movementY;
		  }
	  }
	  
	  function onMouseUp() {
		  moving = false;
	  }
	  
  </script>
  
  <div
	class="{classes} md:h-[{height}]  w-[{width}] draggable cursor-grab"
	style='top: {top}px; left: {left}px;'
	 on:mousedown={onMouseDown} 
	 role="menu"
	 tabindex="0"
  >
  <!-- entry point -->
	<slot/>
  </div>


  <svelte:window on:mouseup={onMouseUp} on:mousemove={onMouseMove} />

<style>
  .draggable {
		user-select: none;
		cursor: move;
		position: absolute;
	}
</style>
