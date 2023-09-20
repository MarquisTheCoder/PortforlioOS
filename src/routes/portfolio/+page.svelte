
<script>
    import Portforlio from "$lib/components/portforlio/Portforlio.svelte";
    import OsBar from "$lib/components/OsBar.svelte";
    import Clock from "$lib/components/Clock.svelte";
</script>

<div
  class="w-screen h-screen bg-[radial-gradient(ellipse_at_center,_var(--tw-gradient-stops))] from-slate-500 to-indigo-800 flex flex-row justify-center items-center text-white/80 relative m-0 p-0 relative"
>
    <Portforlio/>


     
  <!-- <OsBar height={2} position={'top'}>
    <div class="flex flex-row gap-3 items-center"> 
        <img src="/img/terminal.png" class="h-5 opacity-40 invert" alt="">
        <p class="font-bold text-[1rem] items-center font-fira text-white/40">
          MTerm Developer Edition
        </p>
        <ul class="font-thin text-[0.7rem] md:text-[1rem] flex flex-row items-center text-white/40 gap-3">
          <li>Shell</li>
          <li>Edit</li>
          <li>View</li>
          <li>Session</li>
          <li>Scripts</li>
          <li>Profiles</li>
          <li>ToolBelt</li>
          <li>Window</li>
          <li>Help</li>
        </ul> 
    </div>
    <div class="flex flex-row gap-3 justify-end items-center">
      <img src="/img/sound.svg" class="w-5 opacity-60 invert" alt="">
      <img src="/img/battery.svg" class="w-5 opacity-60 invert" alt="">
      <img src="/img/wifi.svg" class="w-5 opacity-60 invert" alt="">
      <Clock/>
    </div>
    </OsBar>
    
    <OsBar height={3} position={'bottom'}>
      <div class="flex flex-row items-center w-[50%] gap-3">
        <img src="/img/linux.svg" class="h-8 cursor-pointer" alt="">
        <img src="/img/vscode.png" class="h-10 opacity-60 cursor-pointer" alt=""> 
        <img src="/img/docker.png" class="h-8 opacity-60 cursor-pointer" alt=""> 
        <img src="/img/discord.png" class="h-8 opacity-60 cursor-pointer" alt=""> 
        <img src="/img/terminal.png" class="h-9 opacity-60 cursor-pointer" alt=""> 
     </div>
     <div class="flex flex-row items-center w-[50%]">
         
     </div>
    </OsBar> -->
    
</div>
