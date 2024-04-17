import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  static targets = ["params"]
  
  search(event) {
    console.log('searching...')
    const value = this.paramsTarget.value
    console.log('searching...')

    fetch(`ingredients/search?search=${value}`, {
      headers: {
        accept: "application/json"
      }
    })
    .then((response) => response.text())
    .then(res => {
      const ingredientsElement = document.getElementById('ingredients');
      ingredientsElement.innerHTML = res;
    })

  }
}