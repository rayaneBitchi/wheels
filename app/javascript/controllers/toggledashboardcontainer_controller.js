import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-car-form"
export default class extends Controller {
  static targets = ["addCar", "carList"]
  connect() {
  }

  addcar(event) {
    event.preventDefault();
    this.addCarTarget.classList.toggle("d-none");
    this.carListTarget.classList.add("d-none");
  }

  carlist(event) {
    event.preventDefault();
    console.log(event.target);
    this.carListTarget.classList.toggle("d-none");
    this.addCarTarget.classList.add("d-none");
  }
}
