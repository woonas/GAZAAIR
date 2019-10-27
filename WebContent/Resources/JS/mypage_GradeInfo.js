/**
 * 
 */
function eligibilityNoneBlock(){
    document.getElementById("benefitPage").style.display= "none";
    document.getElementById("gradePage").style.display= "block";
    document.getElementById("check1").style.visibility= "visible";
    document.getElementById("check2").style.visibility= "hidden";

    document.getElementById("vipEligibility").style.backgroundColor= "white";
    document.getElementById("vipEligibility").style.color= "#999";

    document.getElementById("vipGrade").style.backgroundColor= "#999";
    document.getElementById("vipGrade").style.color= "white";
}

function benefitNoneBlock(){
    document.getElementById("gradePage").style.display= "none";
    document.getElementById("benefitPage").style.display= "block";
    document.getElementById("check1").style.visibility= "hidden";
    document.getElementById("check2").style.visibility= "visible";

    document.getElementById("vipGrade").style.backgroundColor= "white";
    document.getElementById("vipGrade").style.color= "#999";

    document.getElementById("vipEligibility").style.backgroundColor= "#999";
    document.getElementById("vipEligibility").style.color= "white";
}

(() => {
	 if(location.pathname.indexOf('mypage_GradeInfo') !== -1) {
		
		eligibilityNoneBlock();
				
		benefitNoneBlock();
			
		
	 } 
 })();

