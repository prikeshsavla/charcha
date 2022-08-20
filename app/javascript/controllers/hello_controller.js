import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "query" ]

  search() {
    const query = this.queryTarget.value
    if(query && query.length >= 3){
      this.element.requestSubmit();
    }
  }
}
