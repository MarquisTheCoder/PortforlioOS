<script lang="js">
    export let name = "";
    export let classes = "";
    let icons = {
        "heroku": "/img/stack/heroku.png",
        "java": "/img/stack/java_updated.png",
        "mysql": "/img/stack/mysql_1.png",
        "node": "/img/stack/node.png",
        "python":"/img/stack/python.png",
        "render":"/img/stack/render.png",
        "selenium":"/img/stack/selenium.png",
        "supabase":"/img/stack/supabase.png",
        "svelte":"/img/stack/svelte.png",
        "tailwind":"/img/stack/tailwind.png",
        "typescript":"/img/stack/typescript.png",
        "spring": "/img/stack/spring_1.png",
        "bootstrap":"/img/stack/bootstrap.png",
        "jquery":"/img/stack/jquery.png",
        "javascript":"/img/stack/javascript.png",
        }
        
</script>

<img src="{icons[name]}" alt="stack icon {name}" class="h-6 w-6 {classes} opacity-70">
