package action;

import java.util.List;
import java.util.Map;

import model.Catalog;
import model.User;
import service.AllService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;

public class InitCatalogAction extends ActionSupport implements Preparable{
	private AllService allService;
	private String catname;
	private String newCat;
	
	
	public String getNewCat() {
		return newCat;
	}


	public void setNewCat(String newCat) {
		this.newCat = newCat;
	}


	public String getCatname() {
		return catname;
	}


	public void setCatname(String catname) {
		this.catname = catname;
	}

	public void prepare(){
		
	}

	public String execute(){
		
		List<Catalog> catalogs;
		
		ActionContext context = ActionContext.getContext(); 
		Map request = (Map)context.get("request");
		Map session=context.getSession();
		User user=(User)session.get("user");
		catalogs=(List<Catalog>)session.get("catalogs");
		if(catalogs==null||newCat!=null){
			catalogs=allService.getCatalogService().findUserCatalog(user.getId());
			session.put("catalogs",catalogs);	
		}

		return "success";
	}


	public AllService getAllService() {
		return allService;
	}


	public void setAllService(AllService allService) {
		this.allService = allService;
	}

}
