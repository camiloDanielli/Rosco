const words = [];
words[0]="agregacion";
words[1]="bases";
words[2]="color";
words[3]="datos";

const letters= [ "A","B","c","d"];

var user = new Object();
user.nickname = 'pepe';
user.name= 'pepito';
user.mail = 'pepe@gmail.com';
user.pin = 1969;


const desc = [];
desc[0]="Empieza Por A <br>Técnica de composición para implementar objetos componentes. Crea un objeto nuevo, a partir de uno o más objetos ya existentes, que admiten algunos o todos los interfaces necesarios para el nuevo objeto.";
desc[1]="Empieza Por B <br> pueden ser de datos o militares.";
desc[2]="Empieza Por C <br> propiedad con la que puedes cambiar el color de un texto en css";
desc[3]="Empieza Por D <br> eso que facebook recopila a montones sobre ti.";


var cont=0;
var descs=0;
var answered=0;

var timer = 3;
var l = document.getElementById("timer");
 var id=window.setInterval(function(){
  l.innerHTML = timer;
  timer--;
  
  if(n ==-1){
    console.log("aca");
    clearInterval(id);
  }
},1000);
const nextword = () => {
    if (descs > 24){
        descs = 0
        cont=0;
    }
    if (document.getElementById(String(descs)).classList.contains('item--success') || document.getElementById(String(descs)).classList.contains('item--failure')){
            cont++;
            descs += 1
            if (answered != 25){
                nextword();
            }
                
    }else{
        if (cont==25){
            descs = 0;
            document.getElementById("word").innerHTML=letters[cont];
            document.getElementById("question").innerHTML=desc[cont];
            cont=0;
        }else {
        document.getElementById("word").innerHTML=letters[cont];
        document.getElementById("question").innerHTML=desc[cont];
        cont++; 
        }
    }
    if (answered > 24){
        document.getElementById("word").innerHTML="el juego a acabado";
        document.getElementById("question").innerHTML="a conseguido "
    }
}
const comparator = () => {

    var resp = document.getElementById('resp').value;
    document.getElementById('resp').value="";
    const word=words[descs];

    if (resp==word){
        document.getElementById(String(descs)).classList.add('item--success');
        document.getElementById(String(descs)).classList.remove('item--skiped');

    }else{
        document.getElementById(String(descs)).classList.add('item--failure');
        document.getElementById(String(descs)).classList.remove('item--skiped');
    }
    
    answered++;
    descs++;

    nextword();
}

const skip = () => {
    
    if (document.getElementById(String(descs)).classList.contains('item--success' || 'item--failure')){
        descs++;
    }
    else{
        document.getElementById(String(descs)).classList.add('item--skiped');
        descs++;
        
    }
    if(descs == 25){
        descs == 0
    }
    nextword();

}
nextword();