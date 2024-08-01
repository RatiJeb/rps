import {Controller} from '@hotwired/stimulus'

const modal = document.getElementById('modal');
let user_bet = '';
export default class extends Controller {
    connect() {
    };

    create_bet() {
        user_bet = this.element.textContent
        this.fetch_loader()
        // fake loading time to see the loader
        setTimeout(this.fetch_result, 1000)
    }

    fetch_loader() {
        fetch(`/bets/loading?option=${user_bet}`)
            .then(response => response.text())
            .then(html => {
                modal.innerHTML = html;
            })
            .catch(error => console.error('Error loading content:', error));
    }

    fetch_result() {
        fetch('/bets', {
            method: 'POST',
            headers: {
                'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                option: user_bet
            })
        })
            .then(response => response.text())
            .then(html => {
                modal.innerHTML = html;
            })
            .catch(error => console.error('Error loading content:', error));
    }

    close_modal() {
        modal.innerHTML = ''
    }
}
