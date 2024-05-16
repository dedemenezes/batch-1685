const inputs = document.querySelectorAll('input, textarea');
const btn = document.querySelector('button');

const isValid = (input) => {
  // validate the inputs (different validation depending on the input)
  if (input.type === 'checkbox') {
  // must be checked
    return input.checked
  } else {
  // cannot be empty
    return input.value !== ''
  }
}

const updateInput = (input) => {
  // update the display of the input (green for valid or red for invalid)
  if (isValid(input)) {
  //   add the is-valid css class
    input.classList.add("is-valid")
    input.classList.remove('is-invalid')
  } else {
  //   add the is-invalid css
    input.classList.remove("is-valid")
    input.classList.add("is-invalid")
  }
}

const isValidForm = () => {
  const arrayFromNodeList = Array.from(inputs);
  // check the classes: all of them must contain .is-valid
  // in Ruby, we had `numbers.all? { |number| number.even? }`
  // in JS, we have this equivalent: array.every((element) => element.isEven())
  return arrayFromNodeList.every((input) => {
    return input.classList.contains("is-valid");
  })
}

const enableButton = () => {
  // We set the `disabled` attribute of the Form button based on the isValidForm result
  btn.disabled = !isValidForm();
}

inputs.forEach((input) => {
  // For checkboxes, we need to listen to the `change` event
  // For everything else, we want to trigger the validation on the `blur` event
  const eventType = input.type === 'checkbox' ? 'change' : 'blur'
  input.addEventListener(eventType, () => {
    updateInput(input);
    enableButton()
  })
})
