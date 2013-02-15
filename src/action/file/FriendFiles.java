package action.file;

import java.util.List;
import java.util.Map;

import model.File;
import model.User;
import service.AllService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class FriendFiles extends ActionSupport{
	private AllService allService;
	
	
	public String execute()
	{
		List<File> files=null;
		ActionContext context = ActionContext.getContext(); 
		Map request = (Map)context.get("request");
		Map session=context.getSession();	
		
		User user=(User)session.get("user");
		
		request.put("files",files);
		
		return "success";
	}


	public AllService getAllService() {
		return allService;
	}


	public void setAllService(AllService allService) {
		this.allService = allService;
	}
	
}
