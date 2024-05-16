console.log("Hello from JavaScript!");

// SELECT AN ELEMENT
// MOST IMPORTANT METHOD
// document.querySelector(CSS_SELECTOR)

// const navbar = document.querySelector('.navbar-lewagon')
// console.log(navbar)
// const paragraph = document.querySelector('p')
// console.log(paragraph)

const list = document.querySelector('#players')
console.log(list)

// APPEND AN ELEMENT
list.insertAdjacentHTML('beforeend', "<li>Messi</li>")
list.insertAdjacentHTML('beforeend', "<li>De La Cruz</li>")

// SELECT FROM SUBSET
const characters = document.querySelector('#characters')
listItem = characters.querySelector('.red')
console.log(listItem);

// SELECT MULTIPLE ELEMENTS
const winners = document.querySelectorAll('ol#fifa-wins li')
console.log(winners)

// When using querySelector it will ALWAYS
// return the first match for your CSS_SELECTOR
const winner = document.querySelector('ol#fifa-wins li')
console.log(winner);


// LIVECODE - Append France (2 wins) to the list
// 1. SELECT THE ELEMENT TO MANIPULATE
// [debug] PRINT THE SELECTED ELEMENT TO ENSURE YOU GOT IT RIGHT
// 2. APPLY THE MANIPULATION
const fifaWinners = document.querySelector('#fifa-wins')
console.log(fifaWinners)
fifaWinners.insertAdjacentHTML('beforeend', '<li>France (2 wins)</li>')

// SHOW/HIDE
const paragraph = document.querySelector('p.red')
console.log(paragraph)
paragraph.style.display = 'none'
paragraph.style.display = ''

// You can also apply any CSS styling through JS
// in CSS we would write background-color
// in JS we change to lowerCamelCase
paragraph.style.backgroundColor = 'black'

// REMOVE/ADD CSS classes
paragraph.classList.remove('red')
paragraph.classList.add('red')
paragraph.classList.toggle('red')
paragraph.classList.toggle('red')

// READ/WRITE INPUT TEXT
const input = document.querySelector('#email')
console.log(input);
console.log(input.value);
input.value = 'andre@gmail.com'

// EXTRACT TEXT / HTML
const link = document.querySelector('#home')
console.log(link.innerText);
console.log(link.innerHTML);
link.innerText = 'Le Wagon rocks'
link.innerHTML = 'Le Wagon <strong>rocks</strong>'
console.log(link.innerHTML);
