import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  static targets = ["params"]
  
  search(event) {
    const value = this.paramsTarget.value;

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