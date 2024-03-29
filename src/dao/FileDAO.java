package dao;

import java.util.List;

import model.File;
import model.User;

import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


/**
 * A data access object (DAO) providing persistence and search support for File
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 * 
 * @see model.File
 * @author MyEclipse Persistence Tools
 */

public class FileDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory.getLogger(FileDAO.class);
	// property constants
	public static final String TYPE = "type";
	public static final String TITLE = "title";
	public static final String CONTENT = "content";
	public static final String PERMISSION = "permission";
	public static final String OWNER = "user";

	protected void initDao() {
		// do nothing
	}

	public void save(File transientInstance) {
		log.debug("saving File instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}
	
	public void update(File persistentInstance){			
		log.debug("updating File instance");
		try {
			getHibernateTemplate().update(persistentInstance);
			log.debug("update successful");
		} catch (RuntimeException re) {
			log.error("update failed", re);
			throw re;
		}
	}

	public void delete(File persistentInstance) {
		log.debug("deleting File instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public File findById(java.lang.Integer id) {
		log.debug("getting File instance with id: " + id);
		try {
			File instance = (File) getHibernateTemplate().get("model.File", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(File instance) {
		log.debug("finding File instance by example");
		try {
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding File instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from File as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}
	
	public List findByOwner(User user)
	{		
		//用别人做好的现成的工具.这种事说简单也简单说麻烦能恶心死你
		return this.getHibernateTemplate().find("select myfile from File myfile where myfile.user = ? order by myfile.modifiedtime desc", user);
	}

	public List findByType(User user,String catalog) {
		return this.getHibernateTemplate().find("select myfile from File myfile where myfile.user = ? and myfile.type=? order by myfile.modifiedtime desc", user,catalog);
	}

	
	public List findByTitle(Object title) {
		return findByProperty(TITLE, title);
	}

	public List findByPermission(Object permission) {
		
		return findByProperty(PERMISSION, permission);
	}

	public List findAll() {
		log.debug("finding all File instances");
		try {
			String queryString = "select file from Article file order by file.modifiedtime desc";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public File merge(File detachedInstance) {
		log.debug("merging File instance");
		try {
			File result = (File) getHibernateTemplate().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(File instance) {
		log.debug("attaching dirty File instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(File instance) {
		log.debug("attaching clean File instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static FileDAO getFromApplicationContext(ApplicationContext ctx) {
		return (FileDAO) ctx.getBean("FileDAO");
	}
}