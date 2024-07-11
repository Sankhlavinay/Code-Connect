import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="user-name"
export default class extends Controller {
  static targets = ["name"]

  connect() {
    console.log("Hello ROR Developer!!")
  }

  getUserName = () => {
    const element = this.nameTarget
    const name = element.textContent
    alert(`You Clicked On, ${name}`)
  }
}
