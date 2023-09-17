<script>
  import Path from "./Path.svelte";
  import TerminalTitle from "./TerminalTitle.svelte"; 
  import Draggable from "./Draggable.svelte";
  import Window from "./Window.svelte";
  export let left = 10;
  export let top = 200;
  
</script>


<Window windowTitle={'Marquis Terminal'} {top} {left} 
windowClasses={'md:left-[300px] w-[30rem] h-[20rem] md:w-[40rem] md:h-[30rem]'}>
  <div class="p-3 h-full md:p-10 no-scroll">
    <h1
      id="header"
      class=" text-[1.5rem] md:text-2xl font-[600] px-2 md:px-14 font-fira text-[#DAA2E2]/80"
    >
      
    </h1>
    <div class="flex flex-col py-4">
      <p class="px-3 text-2xl font-thin font-fira">
        <!-- svelte-ignore a11y-invalid-attribute -->
        Vist plain portforlio 
        <a href="#" class="text-[#acade5]"> -> here</a>
      </p>
    </div>
    
    <section id="terminal-loop" class="pt-4 h-80 no-scroll">
    <div
      id="results"
      class="w-full  max-h-[10rem] no-scrollbar
       flex flex-col justify-end flex-wrap-0 text-[1rem] 
       opacity-40 overflow-y-scroll font-fira font-thin
        bg-black/20 backdrop-blur-lg rounded-md pl-4"
    />
      <Path />
    </section>
  </div>
</Window>

