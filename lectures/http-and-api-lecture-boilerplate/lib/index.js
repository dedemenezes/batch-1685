// Random activity from array ===== //
const activities = ['Study JS', 'Do flahscards']

// // 1. Select the button
const btn = document.querySelector('.btn');
const header = document.getElementById('activity')

// // console.log(btn);
// // 2. Add an event listener
// btn.addEventListener('click', (event) => {
//   // When the event happens
//   // 3. choose a random activity inside the activities
//   const randomIndex = Math.floor(Math.random() * 2)
//   const activity = activities[randomIndex]
//   // 4. Diplsay on the page
//   // 4.1 Select the element where you want to display
//   // 4.2 Insert the activity in the page
//   header.innerHTML = activity
// })

// FETCH - Get random activity from API ===== //
const url = 'https://www.boredapi.com/api/activity/'

const insertActivity = (data) => {
  // USE THE DATA
  console.log(data.activity)
  header.innerText = data.activity
}

// console.log(btn);
// 2. Add an event listener
btn.addEventListener('click', (event) => {
  fetch(url) // make the HTTP request
    .then(response => response.json()) // Parsing the response
    .then(data => insertActivity(data))
})
