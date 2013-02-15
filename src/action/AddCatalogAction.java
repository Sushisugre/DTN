package action;

import java.util.Map;

import service.AllService;
import model.Catalog;
import model.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AddCatalogAction extends ActionSupport {
	private AllService allService;
	private int id;
	private String catname;
	
	public AllService getAllService() {
		return allService;
	}
	public void setAllService(AllService allService) {
		this.allService = allService;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getCatname() {
		return catname;
	}
	public void setCatname(String catname) {
		this.catname = catname;
	}
	public String execute(){
		
		ActionContext context = ActionContext.getContext(); 
		Map session=context.getSession();
		User user=(User)session.get("user");
		
		Catalog catalog=new Catalog();
		catalog.setName(catname);
		catalog.setOwner(user.getId());
		
		allService.getCatalogService().saveCatalog(catalog);
				
		return "success";
	}


}
