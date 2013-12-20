$(document).ready(function(){
	
	// panel单击事件
    $("img[fid=\"click_collapse_id\"]").click(function(){
    	$("div[id=\"" + this.id + "\"]").toggle();
    });
    
    // stable标题单击事件
    $("img[ftype=\"img_click_collapse_stable\"]").click(function(){
    	$("div[ftype=\"div_click_collapse_stable\"][fid=\"" + $(this).attr("fid") + "\"]").toggle();
    });
    
    // mtable标题单击事件
    $("img[ftype=\"img_click_collapse_mtable\"]").click(function(){
    	$("div[ftype=\"div_click_collapse_mtable\"][fid=\"" + $(this).attr("fid") + "\"]").toggle();
    });
    
});

// 判空
function isNull(object) {
	if (object == null || object == "" || typeof object == "undefined")
		return true;
	else
		return false;
}