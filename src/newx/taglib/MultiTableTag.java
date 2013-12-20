package newx.taglib;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyContent;
import javax.servlet.jsp.tagext.BodyTagSupport;

import newx.exception.CommonErrorCode;
import newx.exception.NewXException;
import newx.taglib.base.IRecordSetOwner;
import newx.taglib.base.MemRecord;
import newx.taglib.base.MemRecordSet;
import newx.taglib.base.MultiTableHead;
import newx.taglib.base.RecordProvider;
import newx.taglib.base.TagService;
import newx.util.StringUtil;

public class MultiTableTag extends BodyTagSupport implements IRecordSetOwner {
	
	private MemRecordSet memRecordSet = null;
	private boolean execute = false;
	private List<MultiTableHead> headList = null;
	private static int md5key = 0;
	
	private String id = "";
	private String title = "";
	private String width = "98%";
	private boolean hasTitle = true;
	private int size = 10;
	
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWidth() {
		return width;
	}

	public void setWidth(String width) {
		this.width = width;
	}

	public boolean isHasTitle() {
		return hasTitle;
	}

	public void setHasTitle(boolean hasTitle) {
		this.hasTitle = hasTitle;
	}

	public void addHead(MultiTableHead head) {
		headList.add(head);
	}
	
	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public int doStartTag() throws JspException {
		memRecordSet = new MemRecordSet();
		execute = false;
		headList = new ArrayList<MultiTableHead>();
		if (StringUtil.isNullOrEmpty(id)) {
			id = genKey();
		} 
		return super.doStartTag();
	}
	
	public int doEndTag() throws JspException {
		try {
			JspWriter out = pageContext.getOut();
			BodyContent bc = getBodyContent();
			if (hasTitle) {
				writeTitleTable(out);
			} else {
				writeTable(out);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return EVAL_PAGE;
	}
	
	private void writeTitleTable(JspWriter out) throws IOException{
		out.println("<div align=\"center\">");
		out.println("<table class=\"dataTable\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\"  border=\"0\"  width=\"" + getWidth() + "\">");
		out.println("<tr><td nowrap class=\"single_table_title\"> &nbsp;<img ftype=\"img_click_collapse_mtable\" fid=\"" + getId() + "\" style=\"cursor:pointer\" src=\"" + pageContext.getServletContext().getContextPath() + "/images/dot11.gif\" width=\"9\" height=\"9\"></a>&nbsp;" + getTitle() + " </td></tr>");
		out.println("</table>");
		out.println("<div ftype=\"div_click_collapse_mtable\" fid=\"" + getId() + "\" style=\"display:block; class=\"panelBorder\" align=\"left\">");
		writeTable(out);
		out.println("</div>");
		out.println("</div>");
	}
	
	private void writeTable(JspWriter out) throws IOException{
		out.println("<table align=center width=\"" + getWidth() + "\" class=\"list_table\" name=\"" + getId() + "\" id=\"" + getId() + "\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">");
		out.println("<thead>");
		out.println("<tr class=\"list_table_thead_tr_title\">");
		for (MultiTableHead head : headList) {
			out.println("<td width=\"11%\" class=\"list_table_thead_td_title\" nowrap>" + head.getTxt() + "</td>");
		}
		out.println("</tr>");
		out.println("</thead>");
		out.println("<tbody>");
		int count = memRecordSet.getRowCount();
		MemRecord record = null;
		String trClass = "";
		for (int i  = 0; i < count; i++) {
			record = memRecordSet.record(i);
			trClass = (i%2) == 0 ? "list_table_tbody_tr" : "list_table_tbody_tr1";
			out.println("<tr name=\"TR" + i + "\" id=\"TR" + i + "\" class=\"" + trClass + "\" onMouseOut=\"this.className='" + trClass + "';\" onMouseOver=\"this.className='list_table_tbody_tr1_mouseover';\">");
			for (MultiTableHead head : headList) {
				out.println("<td class=\"list_table_tbody_td\" align=\"left\" nowrap>" + StringUtil.replaceHTML(record.field(head.getName()))+ "</td>");
			}
			out.println("</tr>");
		}
		out.println("</tbody>");
		out.println("</table>");
		writePageInfo(out);
	}
	
	private void writePageInfo(JspWriter out) throws IOException{
		out.print("<table class=\"list_table_pageSplitInfo\" width=\"" + getWidth() + "\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
		out.print("<tr><td nowrap><div class=\"list_table_pageSplitInfo\">");
		out.print("共有 <b> 9596 </b>条记录&nbsp;&nbsp;");
		out.print("<b> 960 </b> 页&nbsp;&nbsp;当前是第 <b> 1  </b> 页&nbsp;&nbsp;上页&nbsp;&nbsp<a href=\"#\">下页</a>&nbsp;&nbsp");
		out.print("翻到第<input class=\"tdinput\" type=text size=5 id=\"dwjbxx_list_pagenum\" onkeypress=\"turnPageTo('dwjbxx_list')\">页<input style=\"display:none\" type=text size=1> <a id=\"dwjbxx_list_pageto\" href=\"#\"><img src=\"" + pageContext.getServletContext().getContextPath() + "/images/go.gif\"> </a>");
		out.print("</div></td></tr>");
		out.println("</table>");
	}
	
	public void execute(RecordProvider provider) {
		if (execute) {
			throw new NewXException(CommonErrorCode.MULTI_RECORD_ERROR);
		}
		ServletRequest request = pageContext.getRequest();
		TagService.getInstance().query(memRecordSet, provider, request);
		execute = true;
	}
	
	private String genKey() {
		md5key++;
		return "f" + StringUtil.MD5("" + md5key);
	}
}
