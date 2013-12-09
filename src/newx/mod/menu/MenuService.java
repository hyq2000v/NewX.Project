package newx.mod.menu;

import java.util.ArrayList;
import java.util.List;

import newx.framework.IModule;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

public class MenuService implements IModule {

	private static final Logger log = Logger.getLogger(MenuService.class);
	private static MenuService instance = null;
	private List<RightTreeNode> topRights = new ArrayList<RightTreeNode>();

	@Autowired
	private RightDao sysRightDao;

	private MenuService() {}
	
	public void activate() {
		ArrayList<Right> list = sysRightDao.getAllRight();
		initRightTree("0", topRights, list);
	}
	
	public static MenuService getInstance() {
		if (instance == null) {
			instance = new MenuService();
		}
		return instance;
	}

	public List<Right> getTopMenu() {
		List<Right> rights = new ArrayList<Right>();
		for (Object node : topRights) {
			rights.add(((RightTreeNode)node).getValue());
		}
		return rights;
	}
	
	public List<RightTreeNode> getChildren(String topParentId) {
		for (RightTreeNode node : topRights) {
			if (topParentId.equalsIgnoreCase(node.getValue().getId())) {
				return node.getChildren();
			}
		}
		return new ArrayList();
	}
	
	public Right getFirstTopRight() {
		if (topRights.size() > 0)
			return topRights.get(0).getValue();
		else
			return new Right();
	}
 	
	public Right getRightById(String rightId) {
		return findRightById(topRights, rightId);
	}
	
	private void initRightTree(String parentId, List nodes, ArrayList<Right> allRight) {
		for (Right right : allRight) {
			if (parentId.equals(right.getParentid())) {
				RightTreeNode node= new RightTreeNode();
				node.setValue(right);
				nodes.add(node);
				initRightTree(right.getId(), node.getChildren(), allRight);
			}
		}
	}
	
	public Right findRightById(List<RightTreeNode> nodes, String rightId) {
		for (RightTreeNode node : nodes) {
			if (node.getValue().getId().equalsIgnoreCase(rightId)) {
				return node.getValue();
			}
			Right right = findRightById(node.getChildren(), rightId);
			if (right != null) {
				return right;
			}
		}
		return null;
	}
}