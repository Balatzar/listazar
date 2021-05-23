import { Controller } from "stimulus";

export default class extends Controller {
  check() {
    fetch(this.element.dataset.checkUrl);
  }

  checkall() {
    fetch(this.element.dataset.checkUrl);
    document.querySelector('[for="modal-1"]').click();
  }
}
