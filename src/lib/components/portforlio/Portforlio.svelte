

<script>
    import Window from "../Window.svelte";
  import Card from "./Card.svelte";
</script>

<Window windowTitle={'Portforlio'} windowClasses={'w-[60rem] h-[40rem] bg-black/50'}>
    <div class="flex flex-col flex-1 w-full h-full">
        <div class="w-full h-[10rem] min-h-[5rem] flex flex-col items-center justify-center 
        backdrop-blur-md bg-gradient-to-b from-black/40 to-black/20">
          <div id="profile-icon" role="contentinfo" class="rounded-full w-[8rem] h-[8rem] overflow-hidden relative">
            <img src="/img/profilepic_purple.png" alt="profile" class="absolute top-0 left-0 hover:w-[27rem] opacity-80"> 
          </div>   
       
        </div>
         <!--content  --> 
          <div class="flex overflow-y-scroll flex-col flex-1 w-full no-scrollbar"> 
              <div id="project-header" class="flex flex-row justify-center pt-8 pb-10 w-full">
                <h1 class="text-3xl font-bold text-[#B161B7]/60 font-fira">Projects</h1>
              </div> 
              <div class="px-20 w-full h-[10rem]
               flex flex-col md:flex-row gap-4 no-scrollbar 
               flex-wrap items-center md:justify-center">
                <Card/> 
                <Card/> 
                <Card/> 
                <Card/> 
                <Card/> 
                <Card/> 
              </div>
          </div>
    </div>
</Window>