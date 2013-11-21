package newx.framework;


public class FrameworkService implements IModule {
	
	private static FrameworkService service = null;
	
	private FrameworkService() {}
	
	public synchronized static FrameworkService getInstance() {
		if (service == null) {
			service = new FrameworkService();
		}
		return service;
	}
	
	public void activate() {}
}
