function movePage(){
    const Language = document.getElementsByName('languageChecked');
    Language.forEach((node)=>{
        if(node.checked){
            var form = document.moveform;
            form.method = "get";
            form.action = node.value+"StudyList.jsp";
            form.submit();
        }
    })
}

function moveQuestionPage(){
	const Language = [];
	const land = document.getElementsByName('languageChecked');
	for(let i=0; i<land.length; i++){
		if(land[i].checked == true){
			Language.push(land[i].value);
		}
	}
	var form = document.moveform;
            form.method = "get";
	 	switch (Language.length){
		case 0:
		form.action = "problomSovingPage.jsp";
		break;
		case 1:
		form.action = "problomSovingPage1.jsp?"+Language[0];
		break;
		case 2:
		form.action = "problomSovingPage1.jsp?"+Language[0]+Language[1];
		break;
		case 3:
		form.action = "problomSovingPage1.jsp?"+Language[0]+Language[1]+Language[2];
		break;
		case 4:
		form.action = "problomSovingPage1.jsp?"+Language[0]+Language[1]+Language[3];
		break;

	}
            form.submit();
}