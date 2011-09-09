

function submit_yoga_style(flag){

	var value = $("#yoga_style_other").val();

	if(value == null || value == "other" || value == "Other"){
		$("#other_message").html("<font style='color:red'>Please input other yoga style!</font>");
		return false;
	}else{

		var url = "/admin/list_items/ajax_create?list_type=YogaStyle&value_en=" + value + "&flag=" + flag;

		$.ajax({
		  	url: url,
		  	success: function(data,status,xhr){
				$("#yoga_style").html(data);
		  	},
		  	fail: function(data,status,xhr){
				$("#other_message").html("<font style='color:red'>There some error, please try again!</font>")
			}
		});
	}
}