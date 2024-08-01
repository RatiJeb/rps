import { Controller } from "@hotwired/stimulus"

const modal = document.getElementById('modal');
export default class extends Controller {
    connect() {};

    create_bet() {
        this.fetch_loader()
    }

    fetch_loader() {
        fetch(`/bets/loading?option=${this.element.textContent}`)
            .then(response => response.text())
            .then(html => {
                modal.innerHTML = html;
            })
            .catch(error => console.error('Error loading content:', error));
    }

    close_modal() {
        modal.innerHTML = ""
    }
}
