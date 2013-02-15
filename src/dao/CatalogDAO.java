package dao;

import java.util.List;

import model.Catalog;
import model.File;
import model.User;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class CatalogDAO extends HibernateDaoSupport{
	private static final Logger log = LoggerFactory.getLogger(CatalogDAO.class);

	public void save(Catalog transientInstance) {
		log.debug("saving Catalog instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}
	
	public Catalog findById(java.lang.Integer id) {
		log.debug("getting File instance with id: " + id);
		try {
			Catalog instance = (Catalog) getHibernateTemplate().get("model.Catalog", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByOwner(int owner)
	{		
		return this.getHibernateTemplate().find("select mycat from Catalog mycat where mycat.owner = ?",owner);
	}

	public Catalog findByCatname(String catname,int owner)
	{	
		Catalog cat=null;
		List<Catalog> catalogs=this.getHibernateTemplate().find("select mycat from Catalog mycat where mycat.name = ? and mycat.owner=?",catname,owner);
		if(!catalogs.isEmpty()){
		cat=catalogs.get(0);
		}
		return cat;
	}


}
