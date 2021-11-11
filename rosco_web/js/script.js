
const getWord = async () => {
    const response = await fetch('donde sea que se guarden las palabras');
    const data = response.json();
    return data;
}

const Words = async () => {
    const users = await getWord();
    const html = users.map((user) => (`
        <h1>${user.first_name}</h1>
        <h1>${user.last_name}</h1>
        <p>${user.email}<p>
        <img src="${user.avatar}">`));
    const div = document.querySelector(".container");
    div.innerHTML = html.join('');
}

Words();