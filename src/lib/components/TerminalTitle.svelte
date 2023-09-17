<script>
  import { expoInOut } from "svelte/easing";
  import Circle from "./Circle.svelte";
  export let titleName = 'Marquis Terminal';
</script>

<div
  class="flex flex-row justify-start items-center px-8 w-full h-8 rounded-tl-md rounded-tr-md bg-black/10 hover:cursor-grab"
>
  <div class="flex flex-row gap-2">
    <Circle classes={"red-button"} color={"#C72E1066"} />
    <Circle classes={"yellow-button"} color={"#FEBC2E66"} />
    <Circle classes={"green-button"} color={"#27C84066"} />
  </div>

  <div class="flex flex-row justify-center w-full">
   
    <h1 class="mr-[10%] opacity-60 font-fira font-thin">{titleName}</h1>
  </div>
 <script>
    window.onload = () => {
      console.log("hello is it working?")
      let exitButtons = document.querySelector(".red-button");
      exitButtons.forEach(self, function(){
        self.addEventListener("click",()=>{
          let closestWindow = self.closest(".window");
        })
      })
    }    
  </script>
</div>
<style>
  
</style>