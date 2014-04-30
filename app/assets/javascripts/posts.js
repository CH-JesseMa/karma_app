var postsPage = {


  onReady: function() { postsPage.postButtons() },

  postButtons: function() {
    $("#requests").hide();
    $("#offers").hide();
    $("#show_requests").on("click", function() {
      $("#offers").hide();
      $("#requests").show();
    });

    $("#show_offers").on("click", function() {
      $("#requests").hide();
      $("#offers").show();
    });
  }


} //postsPage

$(document).ready(postsPage.onReady);
