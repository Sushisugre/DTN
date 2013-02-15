package action.file;

import java.util.List;
import java.util.Map;

import model.File;
import model.User;
import service.AllService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;

public class ListFileAction extends ActionSupport implements Preparable{
	private AllService allService;
	private String catalog;
	private int currentPage;
	private int allPages;
	private int pageSize;

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getAllPages() {
		return allPages;
	}

	public void setAllPages(int allPages) {
		this.allPages = allPages;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public String getCatalog() {
		return catalog;
	}

	public void setCatalog(String catalog) {
		this.catalog = catalog;
	}

	public AllService getAllService() {
		return allService;
	}

	public void setAllService(AllService allService) {
		this.allService = allService;
	}
	
	public void prepare() throws Exception {
		System.out.println("prepare");
        this.setCurrentPage(0);
        this.setPageSize(20);
	}

	public String execute()
	{
		List<File> files=null;
		ActionContext context = ActionContext.getContext(); 
		Map request = (Map)context.get("request");
		Map session=context.getSession();	
		
		User user=(User)session.get("user");
        if(user==null){
        	return "failure";
        }
		
		
		if(catalog.equals("user")||catalog==null){		
			files=allService.getFileService().findUserFile(user);
			session.put("catalog","user");
		}
		else if(catalog.equals("default")){
			files=allService.getFileService().findUserDefault(user);
		}
		else{
		    int cId=Integer.parseInt(catalog);
		    session.put("catalog",catalog);
		    //这玩意写得真是DT猥琐
		    catalog=allService.getCatalogService().findById(cId).getName();
			files=allService.getFileService().findCatalogFile(user, catalog);
			if(files.isEmpty())
			{
				System.out.println("is empty");
			}
		}
		allPages=files.size()/pageSize;
		if(allPages!=0&&allPages*pageSize!=files.size())
		{
			allPages++;
		}
		System.out.println(allPages);
		request.put("files",files);

		
		return "success";
	}
}
