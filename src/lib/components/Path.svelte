

<div
  class=" text-[1.6rem] flex flex-row gap-4 border-transparent focus:border-transparent focus:ring-0 relative"
>
  <div class="flex flex-row gap-2">
    <span class="text-[#E753E777] font-fira ">λ</span>
    <span class="text-[#48dbe6]  opacity-60 font-thin"> ~ </span>
  </div>
 
  <div class="flex flex-col w-full">
   
    <input
      id="pathInput"
      type="text"
      placeholder="Type help"
      class="bg-transparent placeholder-white/30
       text-white/40 text-[1.3rem]  h-10 
       w-full hover:cursor-text focus:outline-none 
       focus:ring-0 font-fira font-regular"
    />
    
  </div>

  <!-- <div
    id="preview"
    class="w-full h-fit min-h-50 no-scrollbar flex flex-col flex-wrap top-10 left-0 text-[1rem] opacity-40"
  >
  <ul />
  </div> -->
  <script>
    // terminal logic
    window.onload = () => {

      let input = document.querySelector("#pathInput");
      let results = document.querySelector("#results");
      let previewContainer = document.querySelector("#preview");
      async function sleep(ms) {
        return new Promise(resolve => setTimeout(resolve, ms));
      } 
      // let li = document.createElement("div");
      //     li.textContent = input.value;
      
      //     results.append(li);
      async function typeAll(element, data){
        for(let char of data){
          element.innerHTML += char;
          await sleep(13);
        }
      } 

      let terminalOptions = {
          help: {
            description: "Outputs options and their descriptions.",
            action: async () => {
              output = [
                "𝐡𝐞𝐥𝐩 - list out available commands.",
                "𝐬𝐤𝐢𝐥𝐥𝐬 - shows you Marquis's skillz.",
                "𝐩𝐨𝐫𝐭𝐟𝐨𝐫𝐥𝐢𝐨 - takes you to Marquis's portforlio.",
                "𝐠𝐢𝐭𝐡𝐮𝐛 - takes you to Marquis's Github profile.",
                "𝐜𝐥𝐞𝐚𝐫 - clears terminal window"
              ];
              for(let command of output){ 
                results.innerHTML += `<div>`
                await typeAll(results, command);
                results.innerHTML += `</div>`
              };
            }
          },
          skills: {
            description: "Outputs Marquis's skillset.",
            action: async () => {
              output = [
                '🚀 Excited about SvelteKit for front-end magic!',
                '💻 Node.js is my backend best friend.',
                '🌟 Master of both frontend and backend development.',
                '☕️ Java—my cup of code!',
                '🐍 Python enthusiast, scripting solutions with a smile.' 
              ]
              for(let quote of output){ 
                results.innerHTML += `<div>`
                await typeAll(results, quote);
                results.innerHTML += `</div>`
              } 
            },
          },
          portforlio: {
            description: "Takes you to Marquis's portforlio",
            action: async () => {
              results.innerHTML += `<div>`
              await typeAll(results, "🙏 Thank you for visiting my Portforlio! 🚀");
              results.innerHTML += `</div>`
              await sleep(600);
              window.open("/portforlio", "_blank");
            },
          },
          github: {
            description: "Takes you to Marquis's Github page.",
            action: async () => {
              
              results.innerHTML += `<div>`
              await typeAll(results, "🙏 Thank you for visiting my Github! 🚀");
              results.innerHTML += `</div>`
              await sleep(600);
              window.open('https://github.com/MarquisTheCoder', '_blank');
            },
          }, 
          clear: {
            description: "clear",
            action: async () => {
              results.innerHTML = ""
              results.innerHTML += "<br>"
            },
          },
      };

      async function optionHandler(option){
        if (terminalOptions[option]){
          await terminalOptions[option].action();
        }
      }

     
      input.addEventListener("keydown", (e) => {
        if (e.code == "Enter") {
          optionHandler(input.value);
          input.value = ""
        }
      });
    };  
  </script>
</div>


