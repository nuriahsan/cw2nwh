$(function()
{
	$('#queue').text('waiting for results');
	refreshQueue(refreshQueue,5000);
});

function refreshQueue(){
	$.getJSON('/order',function(d){
		$('#queue').empty();
		for (var i=0;i<d.length;i++)
		{
			$('<div/>')
				// .append($('<span/>',{text:d[i][0]}))
				.append($('<span/>',{text:d[i][0] + " " + d[i][1]}))
				.appendTo('#queue');
				//$("span").each(function(i){
				//	status = 
				//	if(status == "processing"){
				//		$(this).css("background-color","red");
				//	}
				//	else{
				//		$(this).css("background-color","green");
					//}
			//	});

				// if (d[i][1] == "processing") {
    //                     $("#queue" + d[i][0]).find("td").css("background-color", "green");
    //                     $("#queue" + d[i][1]).find("td").css("background-color", "green");
    //                 }
			
				$("span:contains('processing')").css("background-color","gray");
				$("span:contains('processing')").css("color","white");


		}


	})
}