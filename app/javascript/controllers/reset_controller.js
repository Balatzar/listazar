import { Controller } from "stimulus";

export default class extends Controller {
  connect() {
    console.log(this);
  }

  reset() {
    console.log(this);

    this.element.reset();
  }
}
