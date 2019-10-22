/**
 * 
 */


(() => {
	 if(location.pathname.indexOf('mypage_Main') !== -1) {
		 $(function(){
				$("#promile").delay(500);
				/* var val=$("#promile").attr("value"); */
				for(var i=0;i<70;i++){
					$("#promile").animate({"value":70});
				}
				$("#prograde").delay(500);
				/* var val=$("#prograde").attr("value"); */
				for(var i=0;i<70;i++){
					$("#prograde").animate({"value":30});
				}
			
			});
	 
	 } 
 })();

iife