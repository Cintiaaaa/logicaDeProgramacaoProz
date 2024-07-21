let elementoH1 = document.querySelector("h1");

elementoH1.innerText = "Seja Bem vindo a esta página";
console.log(elementoH1);

let elementoA = document.querySelector("a");
elementoA.innerText = "Site Oficial Proz Educação";

let elementoUl = document.querySelector("ul");
elementoUl.innerHTML = `
<li>Sobre nós</li>
<li>Cursos</li>
<li>Matrículas</li>
`;

let elementoOl = document.querySelector("ol");
elementoOl.innerHTML = `
<ol>
<li><a href="https://www.google.com.br/">Google</a></li>
<li><a href="https://github.com/">Github</a></li>
<li><a href="https://www.w3schools.com/">W3School</a></li>
</ol>
`;