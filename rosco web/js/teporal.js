const words = [];
words[0]="agregacion";
words[1]="bases";
words[2]="color";
words[3]="datos";

const letters= [ "A","B","c","d"];

const desc = [];
desc[0]="Empieza Por A <br>Técnica de composición para implementar objetos componentes. Crea un objeto nuevo, a partir de uno o más objetos ya existentes, que admiten algunos o todos los interfaces necesarios para el nuevo objeto.";
desc[1]="Empieza Por B <br> pueden ser de datos o militares.";
desc[2]="Empieza Por C <br> propiedad con la que puedes cambiar el color de un texto en css";
desc[3]="Empieza Por D <br> eso que facebook recopila a montones sobre ti.";

var cont=0;
var descs=0;
var answered=0;
const nextword = () => {
    if (document.getElementById(String(descs)).classList.contains('item--success') || document.getElementById(String(descs)).classList.contains('item--failure')){
            cont++;
            nextword();
    }else{
        if (cont==24){
            document.getElementById("word").innerHTML=letters[cont];
            document.getElementById("question").innerHTML=desc[cont];
            cont=0;
        }else {
        document.getElementById("word").innerHTML=letters[cont];
        document.getElementById("question").innerHTML=desc[cont];
        cont++; 
        }
    }
    if (answered==25){
        document.getElementById("word").innerHTML="el juego a acabado";
        document.getElementById("question").innerHTML="a conseguido "
    }
    console.log(cont);
}
const comparator = () => {

    var resp = document.getElementById('resp').value;
    document.getElementById('resp').value="";
    console.log(resp);
    const word=words[descs];

    if (resp==word){
        document.getElementById(String(descs)).classList.add('item--success');
        document.getElementById(String(descs)).classList.remove('item--skiped');

    }else{
        document.getElementById(String(descs)).classList.add('item--failure');
        document.getElementById(String(descs)).classList.remove('item--skiped');
    }
    if (descs==24){
        descs=0;
    }
    descs++;
    answered++;
    nextword();
}

const skip = () => {
    if (document.getElementById(String(descs)).classList.contains('item--success' || 'item--failure')){

    nextword();
}else{
    document.getElementById(String(descs)).classList.add('item--skiped');
    descs++;
    nextword();}
}
nextword();
