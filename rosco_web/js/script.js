const getWord = async() => {
    const response = await fetch('localhost:9000/palabras');
    const data = response.json();
    return data;
}
const getUser = async() => {
    const response = await fetch('localhost:9000/usuarios');
    const data = response.json();
    return data;
}
let allWords = [];
let words25 = [];
const letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "l", "m", "n", "ñ", "o", "p", "q", "r", "s", "t", "u", "v", "x", "y", "z"];
let Users = [];
const Words = async() => {
    const words = await getWord();
    const palabra = words.map((palabra) => (`[
        palabra = ${words.palabra},
        letra = ${words.letra},
        descripcion = ${words.descripcion},
        empiezaPor = ${word.empiezaPor},
    ]
    `));
    allWords.push(words).join(',');
    for (let i = 0; i < 25; i++) {
        words25.splice(i, 0, allWords.find(x => x.letra == i));
    }
    console.log = words25;
}
const Users = async() => {
    const user = await getUser();
    const users = user.map((Users) => (`[
        nombreUsuario = ${users.nombre},
    contraseña = ${users.contraseña},
    mail = ${users.mail},
    ]
    `));
    Users.push(users);
}

var cont = 0;
var descs = 0;
var answered = 0;

var timer = 120;
var l = document.getElementById("timer");
var id = window.setInterval(function() {
    l.innerHTML = timer;
    timer--;

    if (n == -1) {
        clearInterval(id);
    }
}, 1000);
const nextword = () => {
    if (descs > 24) {
        descs = 0
        cont = 0;
    }
    if (document.getElementById(String(descs)).classList.contains('item--success') || document.getElementById(String(descs)).classList.contains('item--failure')) {
        cont++;
        descs += 1
        if (answered != 25) {
            nextword();
        }

    } else {
        if (cont == 25) {
            descs = 0;
            document.getElementById("word").innerHTML = words25[cont].letra;
            document.getElementById("question").innerHTML = words25[cont].descripcion;
            cont = 0;
        } else {
            document.getElementById("word").innerHTML = words25[cont].letra;
            document.getElementById("question").innerHTML = words25[cont].descripcion;
            cont++;
        }
    }
    if (answered > 24) {
        document.getElementById("word").innerHTML = "el juego a acabado";
        document.getElementById("question").innerHTML = " "
    }
}
const comparator = () => {

    var resp = document.getElementById('resp').value;
    document.getElementById('resp').value = "";
    const word = words25[descs].palabra;

    if (resp == word) {
        document.getElementById(String(descs)).classList.add('item--success');
        document.getElementById(String(descs)).classList.remove('item--skiped');

    } else {
        document.getElementById(String(descs)).classList.add('item--failure');
        document.getElementById(String(descs)).classList.remove('item--skiped');
    }

    answered++;
    descs++;

    nextword();
}

const skip = () => {

    if (document.getElementById(String(descs)).classList.contains('item--success' || 'item--failure')) {
        descs++;
    } else {
        document.getElementById(String(descs)).classList.add('item--skiped');
        descs++;

    }
    if (descs == 25) {
        descs == 0
    }
    nextword();

}
nextword();
