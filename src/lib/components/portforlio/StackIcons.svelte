<script lang="js">
    export let name = "";
    let icons = {
        "heroku": "/img/stack/heroku.png",
        "java": "/img/stack/java_updated.png",
        "mysql": "/img/stack/mysql.png",
        "node": "/img/stack/node.png",
        "python":"/img/stack/python.png",
        "render":"/img/stack/render.png",
        "selenium":"/img/stack/selenium.png",
        "supabase":"/img/stack/supabase.png",
        "svelte":"/img/stack/svelte.png",
        "tailwind":"/img/stack/tailwind.png",
        "typescript":"/img/stack/typescript.png"
        }
</script>

<img src="{icons[name]}" alt="stack icon {name}" class="h-8 opacity-70">
