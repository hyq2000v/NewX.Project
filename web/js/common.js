$(document).ready(function(){
	
	// panel单击事件
    $("img[fid=\"click_collapse_id\"]").click(function(){
    	$("div[id=\"" + this.id + "\"]").toggle();
    });
    
    
});

// 判空
function isNull(object) {
	if (object == null || object == "" || typeof object == "undefined")
		return true;
	else
		return false;
}