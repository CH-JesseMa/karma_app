var profilePage = {


  onReady: function() { profilePage.postTextField() },

  postTextField: function() {
    $("#add_text_field").on("click", function() {
      $(skills_field).after("<input id='user_profile' name='user[profile]' type='text'>").after("<br>").after("<br>");
    });
  }

} //profilePage

$(document).ready(profilePage.onReady);
