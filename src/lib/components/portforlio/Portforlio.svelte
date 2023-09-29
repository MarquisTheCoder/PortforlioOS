

<script>
    import Window from "../Window.svelte";
    import Card from "./Card.svelte";
    import projects from "$lib/database/projects.json";
</script>

<Window windowTitle={'Portforlio'} top={0} left={0} windowClasses={'portforlio  w-[100vw] h-[100vh] min-h-[100vh] bg-black/70'}>
    <div class="flex overflow-y-scroll flex-col w-full h-full no-scrollbar">
    
        <div class="w-full h-fit min-h-[5rem] shrink-0  flex flex-col items-center justify-center 
        backdrop-blur-md bg-gradient-to-b from-black/60 to-black/40">

          
          <div id="profile-icon" role="contentinfo" class="rounded-full w-[8rem] h-[8rem] overflow-hidden relative shrink-0 mt-10">
            <img src="/img/profilepic_purple.png" alt="profile" class="absolute top-0 left-0 hover:w-[27rem] opacity-80 shrink-0"> 
          </div> 
          
          <div class="py-4">
            <h1 class="text-4xl font-bold text-[#B161B7] font-fira">MarquisTheCoder</h1> 
          </div>

          <div class="flex flex-col gap-4 items-center px-4 w-full text-center md:px-52">
            <h2 class="font-bold text-white font-fira">About me</h2>
                <p class="pb-4 font-fira">🚀 Elevate your web projects with a web development virtuoso! 🎨 As a professional full-stack developer, I'm the maestro behind stunning web applications. My specialties? SvelteKit and Node.js - the dynamic duo for crafting exceptional digital experiences. 🌟

              In my arsenal, I wield powerful libraries like Tailwind CSS, Supabase, and Astro. They're not just tools; they're the secret sauce that makes your apps sing! 🎶
              
              My passion? Weaving productivity and user delight into every line of code. Together, we'll turn your digital dreams into reality. Let's embark on this exciting journey! 💡💻✨</p>
              <div class="flex flex-row gap-4 justify-center pb-4 w-full">
                <a href="https://www.buymeacoffee.com/marquisthecoder" class="mt-10" target="_blank">
                  <img src="/img/coffee.svg" class="invert transition-transform ease-in-out hover:animate-bounce" alt="buy marquis a coffee"/>
                </a>
              </div>
              <div class="flex flex-row gap-5 mb-8 invert">
                <a src="https://github.com/MarquisTheCoder" target="_blank">
                  <img src="/img/github.png" class="z-50 h-10 hover:cursor-pointer"/>
                </a>
                <a src="https://www.linkedin.com/in/marquis-w/" target="_blank">
                  <img src="/img/linkedin.png" class="z-50 h-10 hover:cursor-pointer"/>
                </a>
                <a src="tel:7046351576" >
                  <img src="/img/phone.png" class="z-50 h-10 hover:cursor-pointer"/>
                </a>
                <a src="mailto:deshawn.m.williams01@gmail.com">
                  <img src="/img/emai.png" class="z-50 h-10 hover:cursor-pointer"/>
                </a>
              </div>

          </div>

          
          
        </div>
        
         <!--content  --> 
        <div class="flex flex-col w-full shrink-0 overflow-y-scroll h-[30rem] no-scrollbar"> 
            <div id="project-header" class="flex flex-row justify-center pt-8 pb-10 w-full">
              <h2 class="text-4xl font-bold text-white/80 font-fira">Projects</h2>
            </div> 
            <div class="px-4 md:px-20 w-full h-[10rem]
              flex flex-col md:flex-row gap-8 no-scrollbar 
              md:flex-wrap items-center md:justify-center">

            {#each projects as project}
              <Card image={project.image} name={project.name} description={project.description} stack={project.stack} link={project.url} active={project.live}/>

            {/each}
                
            </div>
        </div>
    </div>

</Window>