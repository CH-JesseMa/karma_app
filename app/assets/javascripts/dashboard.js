  function transactions() {
    var baseUri = "http://localhost:3000";
    var jqxhr = $.ajax({ url: baseUri + "/beasts" });
    jqxhr.done(function(beasts) {
      var beastData = beasts;
      $.each(beastData, function(index, beast) {
          $("<article>").attr("class", "beast")
          .append($("<h1>")
              .text(beast.name))
          .append($("<div>")
              .attr("class", "light_ethology")
              .text(beast.light_ethology))
          .append($("<div>")
              .attr("class", "diet")
              .text(beast.diet))
          .appendTo("#beasts")
      })
    })
  }
