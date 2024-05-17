// RECAP
// How to select ONE element
// const btn = document.querySelector('.btn.btn-primary')
// console.log(btn)

// How to select MULTIPLE element
// const buttons = document.querySelectorAll('.btn.btn-primary')
// console.log(buttons)

//////// RECAP ENDS ////////

const students = ['Neville', 'Hermione', 'Sirius']
let liContent = ''
students.forEach((student) => {
  const listItem = `<li>${student}</li>`
  // console.log(listItem)
  liContent += listItem
  // console.log(liContent)
})

const ul = `<ul id="students">${liContent}</ul>`
// console.log(ul)

// 1. Select the container
const container = document.querySelector('.container')
// 2. append the ul into the container
container.insertAdjacentHTML('afterbegin', ul)

// We can access the body/head of my HTML document doing ⤵️
// console.log(document.body)
// console.log(document.head)

const unorderedList = document.querySelector('ul#students')
// console.log(unorderedList)
unorderedList.style.listStyle = "katakana"


const listItems = document.querySelectorAll('li')
// console.log(listItems)
// 2. ITERATE!!!
listItems.forEach((item) => {
  // console.log(item.innerText)
  item.innerText += '🧙'

  // exercise done during lecture
  // How could I add the emoji
  // to the start of my list item text??
  // const newText = `🧙 ${item.innerText}`
  // console.log(newText)
  // item.innerText = newText
})


//////// DATASET ////////
// const firstMember = document.querySelector('.abba')
// console.log(firstMember.dataset)


const members = document.querySelectorAll('.abba')
members.forEach((member) => {
  // console.log(member.dataset.instrument)
  const instrument = member.dataset.instrument
  member.innerText += instrument
})


//////// EVENTS ////////
// // Today's MANTRA ⤵️
// // elementThatYouSelected.addEventListener(eventType, (event) => {
// //   Do something (callback)
// // });


//////// BINDING OUR FIRST EVENT LISTENER ////////
// // 1. Select the element
// const image = document.querySelector('#leo')
// // 2. Bind the event listener
// image.addEventListener('click', (event) => {
//   console.log(event)
//   console.log(event.currentTarget)
//   // currentTarget reference the element
//   // where my event happened
//   event.currentTarget.classList.toggle('img-circle')
// })


// 1. select the images
const images = document.querySelectorAll('.container img')
console.log(images)

// 2. Iterate over the node list
images.forEach((image) => {
  image.addEventListener('click', (event) => {
    event.currentTarget.classList.toggle('img-circle')
  })
})

//////// PREVENTING DEFAULT BEHAVIOR ////////
const link = document.getElementById('link')
// console.log(link)
link.addEventListener('click', (event) => {
  // prevent the default behavior
  event.preventDefault()
  console.log(event)
})


//////// CHECK ALL CHECKBOXES LIVECODE ////////
// 1. Select the elementS
// 1.1. select the element to bind the event listener
const checkAll = document.querySelector('#select-all-checkbox')
// 1.2 select the element that you want to manipulate
const checkboxes = document.querySelectorAll('.form-check-input')
// console.log(checkAll, checkboxes)

checkAll.addEventListener('change', (event) => {
  // 2. iterate over the checkboxes
  checkboxes.forEach((checkbox) => {
    // 3. for each one of them
    // 3.1 we update the checked state
    // console.log(checkbox)
    // if (event.currentTarget.checked) {
    //   checkbox.checked = true
    // } else {
    //   checkbox.checked = false
    // }
    checkbox.checked = event.currentTarget.checked
  })
})
