var dashboard = {

	onReady: function() { dashboard.closePost(), dashboard.completeTransaction() },

	closePost: function() {
		$(".close").on('click', function(event){
			var id = $(this).attr("id");

			$.ajax({
				url: '/posts/' + id,
				type: 'PUT',
				dataType: 'json',
				data: { post: { is_open: "false" } },
				context: this
			}).done( function(data) {
				$(this).parent().remove();
			});
		});
	},

	completeTransaction: function() {
		$(".complete").on('click', function(event){
			var transaction_id = $(this).attr("id");

			$.ajax({
				url: 'transactions/' + transaction_id,
				type: 'PUT',
				dataType: 'json',
				data: { motive: "complete_transaction" },
				context: this 
			}).done( function(data) {
				var parent = $(this).parent();
				$(this).remove();
				parent.append("<p>").text("Completed");
			});
		});
	}
};

$(document).ready(dashboard.onReady);