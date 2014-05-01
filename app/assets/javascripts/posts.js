var postsPage = {


  onReady: function() { postsPage.postButtons() },

  postButtons: function() {
    $("#requests").hide();
    $("#offers").hide();
    $("#show_requests").on("click", function() {
      $("#offers").hide();
      $("#requests").fadeIn(1000);
    });

    $("#show_offers").on("click", function() {
      $("#requests").hide();
      $("#offers").fadeIn(1000);
    });
  }


} //postsPage

$(document).ready(postsPage.onReady);
