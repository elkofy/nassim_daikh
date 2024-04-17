import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="langage"
export default class extends Controller {
  connect() {
    console.log('Connected to langage controller')
  }
  switch(event) {
    const langage = event.target.innerText;
    window.location.href = `?locale=${langage=== '🇫🇷' ? 'fr' : 'en'}`;
    console.log(langage);
  
  }

}
