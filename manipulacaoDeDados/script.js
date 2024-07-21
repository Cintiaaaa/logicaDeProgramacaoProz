const titulo = document.createElement("h1");

titulo.innerText = "E-commerce";
titulo.id = "titulo";

console.log(titulo);

let elementoBody = document.querySelector("body");
elementoBody.appendChild(titulo);


const conteudo = document.createElement("body");

conteudo.innerHTML =
`
<h2>GUITARRA ELETRICA TAGIMA SIXMART ESCALA ESCURA MDSV</h2>
<h3>APENAS R$1.459,00!</h3>
<img src="./img/guitarra.jpg" alt="Guitarra"/>
<p>Eleve sua performance musical com a Guitarra Sixmart Tagima, uma fusão perfeita de estilo e inovação.
 Equipada com efeitos embutidos de chorus, reverb, delay, drive e distorção, a Sixmart oferece um mundo 
 de possibilidades sonoras ao alcance dos seus dedos. Seja você um músico profissional ou um entusiasta 
 em busca de novos horizontes, esta guitarra foi projetada para inspirar e impressionar. Explore novos 
 territórios musicais, mergulhe em solos épicos e liberte sua criatividade com a Guitarra Sixmart Tagima. 
 Descubra o poder da expressão musical sem limites</p>
`
const sessao = document.querySelector("body");
sessao.appendChild(conteudo);
