// 判空
function isNull(object) {
	if (object == null || object == "" || typeof object == "undefined")
		return true;
	else
		return false;
}