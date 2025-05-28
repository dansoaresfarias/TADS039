function hackeando() {
    scrollTo(0,0);
    document.getElementById("nomeComp").innerText = "Aderson Constant";
    document.getElementById("navNome").innerHTML = "Aderson Constant";
    document.title = "Currículo - Dersinho";
    let foto = document.getElementById("foto");
    foto.src = "https://avatars.githubusercontent.com/u/179236758?v=4";
    foto.classList.add("rounded-circle");
    foto.classList.add("mt-5");
    document.getElementById("css").href = "css/dersinho.css";
}