

<script>
    import Window from "../Window.svelte";
    import Card from "./Card.svelte";
    import projects from "$lib/database/projects.json";
</script>

<Window windowTitle={'Portforlio'} top={0} left={0} windowClasses={'portforlio  w-[100vw] md:w-[100vw] min-h-[40vh] h-[90vh] md:h-[95vh] bg-black/70'}>
    <div class="flex flex-col flex-1 w-full h-full">
        <div class="w-full h-fit min-h-[5rem] flex flex-col items-center justify-center 
        backdrop-blur-md bg-gradient-to-b from-black/60 to-black/40">
          <div id="profile-icon" role="contentinfo" class="rounded-full w-[8rem] h-[8rem] mt-4 overflow-hidden relative shrink-0">
            <img src="/img/profilepic_purple.png" alt="profile" class="absolute top-0 left-0 hover:w-[27rem] opacity-80 shrink-0"> 
          </div> 
          <div class="py-4">
            <h1 class="text-4xl font-bold text-[#B161B7]/60 font-fira">MarquisTheCoder</h1> 
          </div>
          <div class="flex flex-row gap-4 justify-center w-full">
            
          </div>  
           
        </div>
         <!--content  --> 
          <div class="flex overflow-y-scroll flex-col flex-1 w-full no-scrollbar"> 
              <div id="project-header" class="flex flex-row justify-center pt-8 pb-10 w-full">
                <h2 class="text-4xl font-bold text-white/60 font-fira">Projects</h2>
              </div> 
              <div class="px-4 w-full h-[10rem]
               flex flex-col md:flex-row gap-8 no-scrollbar 
               md:flex-wrap items-center md:justify-center">

              {#each projects as project}
                <Card image={project.image} name={project.name} description={project.description} stack={project.stack} link={project.url} active={project.live}/>
              {/each}
                 
              </div>
          </div>
    </div>

</Window>