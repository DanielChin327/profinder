import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="top-card"
export default class extends Controller {
  static targets = ["card", "container"]

  connect() {
    console.log("connected");
  }

  show(e) {
    e.preventDefault();
    if (e.currentTarget.classList.contains("show")) {
      this.containerTarget.classList.remove("showing")
      e.currentTarget.classList.remove("show")
    } else {
      this.cardTargets.forEach(card=>{
        card.classList.remove("show")
      })
      e.currentTarget.classList.add("show")
      this.containerTarget.classList.add("showing")
    }





  }
}

  // var zindex = 10;

  // $("div.card").click(function(e){
  //   e.preventDefault();

  //   var isShowing = false;

  //   if ($(this).hasClass("show")) {
  //     isShowing = true
  //   }

  //   if ($("div.cards").hasClass("showing")) {
  //     // a card is already in view
  //     $("div.card.show")
  //       .removeClass("show");

  //     if (isShowing) {
  //       // this card was showing - reset the grid
  //       $("div.cards")
  //         .removeClass("showing");
  //     } else {
  //       // this card isn't showing - get in with it
  //       $(this)
  //         .css({zIndex: zindex})
  //         .addClass("show");

  //     }

  //     zindex++;

  //   } else {
  //     // no cards in view
  //     $("div.cards")
  //       .addClass("showing");
  //     $(this)
  //       .css({zIndex:zindex})
  //       .addClass("show");

  //     zindex++;
  //   }

  // });
