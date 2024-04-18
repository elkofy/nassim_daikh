import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="langage"
export default class extends Controller {
  switch(event) {
    window.location.href = `?locale=${event.target.innerText === '🇫🇷' ? 'fr' : 'en'}`;  
  }
}
