package action.file;

import service.AllService;

import com.opensymphony.xwork2.ActionSupport;

public class DeleteFileAction extends ActionSupport{
	private AllService allService;
	private int id;

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

		this.getAllService().getFileService().deleteFile(id);
		
		return "success";
	}
}
