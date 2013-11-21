package newx.framework;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

public class Framework {
	
	private static final Logger log = Logger.getLogger(Framework.class);
	private List<IModule> serviceList = new ArrayList<IModule>();
	
	private static Framework framework = null;

	public List<IModule> getServiceList() {
		return serviceList;
	}

	public void setServiceList(List<IModule> serviceList) {
		this.serviceList = serviceList;
	}
	
	private Framework() {
	}
	
	public synchronized static Framework getInstance() {
		if (framework == null) {
			framework = new Framework();
		}
		return framework;
	}
	
	private void activate() {
	}
}
