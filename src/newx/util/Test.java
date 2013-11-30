package newx.util;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String s = "dir/action/MainAction?menuid=\"demo_demo2_menu1\"&actionT";
		System.out.println(s.replaceAll("\"", "\\\\\""));
	}

}
