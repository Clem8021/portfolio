import { Controller } from "@hotwired/stimulus"

// Usage :
// <div data-controller="reveal">
//   <div data-reveal-target="item" class="reveal">...</div>
//   <div data-reveal-target="item" class="reveal" data-reveal-delay="1">...</div>
// </div>
//
// Chaque élément marqué data-reveal-target="item" reçoit la classe
// "is-visible" dès qu'il entre dans le viewport, ce qui déclenche
// la transition définie en CSS (.reveal.is-visible).
export default class extends Controller {
  static targets = ["item"]

  connect() {
    this.observer = new IntersectionObserver(
      (entries) => this.handleIntersect(entries),
      {
        root: null,
        rootMargin: "0px 0px -10% 0px", // se déclenche un peu avant le bas de l'écran
        threshold: 0.15
      }
    )

    this.itemTargets.forEach((el) => this.observer.observe(el))
  }

  disconnect() {
    this.observer?.disconnect()
  }

  handleIntersect(entries) {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        entry.target.classList.add("is-visible")
        this.observer.unobserve(entry.target) // n'apparaît qu'une fois
      }
    })
  }
}