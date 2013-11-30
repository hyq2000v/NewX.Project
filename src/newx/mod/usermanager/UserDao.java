package newx.mod.usermanager;

import javax.sql.DataSource;

import newx.repository.AbstractDao;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao extends AbstractDao {

	private static final Logger log = Logger.getLogger(UserDao.class);
	
	@Autowired
	private UserDao(@Qualifier("dataSource") DataSource dataSource){
		super(dataSource);
	}
}

