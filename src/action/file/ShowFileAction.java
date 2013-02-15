package action.file;

import java.util.Map;

import model.File;
import service.AllService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ShowFileAction extends ActionSupport{
	private AllService allService;
	private int id;
	//private String title;
	//private String content;

	//public String getTitle() {
	//	return title;
	//}

	//public void setTitle(String title) {
	//	this.title = title;
	//}

	//public String getContent() {
	//	return content;
	//}

	//public void setContent(String content) {
	//	this.content = content;
	//}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public AllService getAllService() {
		return allService;
	}

	public void setAllService(AllService allService) {
		this.allService = allService;
	}

	public String execute(){
		File file=allService.getFileService().findFile(id);
		//if(file!=null){			
		//	title=file.getTitle();
		//	content=file.getContent();	
		//}
		ActionContext context = ActionContext.getContext(); 
		Map request = (Map)context.get("request");
		request.put("file",file);
		
		return "success";
	}
}
