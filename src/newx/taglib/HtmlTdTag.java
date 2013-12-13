package newx.taglib;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyContent;
import javax.servlet.jsp.tagext.BodyTagSupport;

public class HtmlTdTag extends BodyTagSupport {

	public int doEndTag() throws JspException {
		try {
			JspWriter out = pageContext.getOut();
			out.println("<td valign=\"top\" class=\"tdprompt\">");
			BodyContent bc = getBodyContent();
			if (bc != null)
				out.println(bc.getString());
			out.println("&nbsp;</td>");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return EVAL_PAGE;
	}
}
