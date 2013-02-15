package service;

import java.util.List;

import model.Catalog;
import dao.AllDAO;

public class CatalogService {
	private AllDAO allDAO;

	public AllDAO getAllDAO() {
		return allDAO;
	}

	public void setAllDAO(AllDAO allDAO) {
		this.allDAO = allDAO;
	}
	
	boolean isExit(){
		
		return false;
	}
	
	public void saveCatalog(Catalog catalog){
		allDAO.getCatalogDAO().save(catalog);		
	}
	
	public Catalog findById(int id){
		return allDAO.getCatalogDAO().findById(id);
	}
	
	public List findUserCatalog(int owner){		
		return allDAO.getCatalogDAO().findByOwner(owner);
	}
	
	public Catalog findCatalog(String catname,int owner){
		return allDAO.getCatalogDAO().findByCatname(catname, owner);
	}
}
