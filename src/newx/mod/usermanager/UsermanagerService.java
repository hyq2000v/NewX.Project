package newx.mod.usermanager;

import org.springframework.beans.factory.annotation.Autowired;

import newx.framework.IModule;

/**
 * @author yqhuang
 * 用户管理系统
 */
public class UsermanagerService implements IModule {
	
	private static UsermanagerService instance = null;
	
	@Autowired
	private UserDao userDao;
	
	private UsermanagerService() {}
	
	public static UsermanagerService getInstance() {
		if (instance == null) {
			instance = new UsermanagerService();
		}
		return instance;
	}
	
	public void activate() {
	}
}
