package action.file;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import model.Catalog;
import model.File;
import model.User;
import service.AllService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;


public class CreateFileAction extends ActionSupport implements Preparable{
	private AllService allService;
	private String title;
	private String tag;
	private String content;
	private String catalog;//ѡ���Ŀ¼
	private String permission;
	private List<String> catalogs;
	private String type;//��������
	private Date time;
	private int id;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public List<String> getCatalogs() {
		return catalogs;
	}
	public void setCatalogs(List<String> catalogs) {
		this.catalogs = catalogs;
	}
	public AllService getAllService() {
		return allService;
	}
	public void setAllService(AllService allService) {
		this.allService = allService;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCatalog() {
		return catalog;
	}
	public void setCatalog(String catalog) {
		this.catalog = catalog;
	}
	public String getPermission() {
		return permission;
	}
	public void setPermission(String permission) {
		this.permission = permission;
	}

	public void prepare() throws Exception {
		//��ʼ��list
		//System.out.println("prepare");
		//this.setId(0);//Ϊ���Ժ��ѯ���ݿ��ʼ��

	}

	public String execute(){ 
		ActionContext context = ActionContext.getContext(); 
		Map session=context.getSession();
		User user=(User)session.get("user");
		
		if(type==null){
			System.out.println("null");
			return "failure";			
		}
		if(type.equals("initForm"))//��ʼ��
		{   System.out.println("createFileAction init form!");
			//��ʼ��list
			//List<Catalog> cats=allService.getCatalogService().findUserCatalog(user.getId());
		    //catalogs����session�У���ε����ݿ��ѯ��û��Ҫ��
		    List<Catalog> cats=(List<Catalog>)session.get("catalogs");
			List<String> cs=new ArrayList<String>();
			cs.add("Ĭ�Ϸ���");
			if(!cats.isEmpty()){
				for(int i=0;i<cats.size();i++){
					cs.add(cats.get(i).getName());
				}
				this.setCatalogs(cs);
			}
			else{
				this.setCatalogs(cs);
			}
			
			
			catalog=(String)session.get("catalog");
			System.out.println("in catalog:"+catalog);
			if(catalog.equals("user")){
				catalog=null;
			}
			else{
				int cId=Integer.parseInt(catalog);		    
			    //������д������DT���
			    catalog=allService.getCatalogService().findById(cId).getName();				
			}
			
			
			if(id!=0){
				File file=allService.getFileService().findFile(id);
				Map request = (Map)context.get("request");
				request.put("file",file);
				
				title=file.getTitle();
				content=file.getContent();
				catalog=file.getType();
				//permission=file.getPermission();
				
			}
			return "init";
		}
		if (type != null && type.equals("submit")) {//�����ļ� 
			
			this.setTime(new Date());
			File file=new File();
			file.setUser(user);
			file.setTitle(title);
			file.setContent(content);
			file.setPermission(permission);
			file.setModifiedtime(time);
			if(catalog.equals("Ĭ�Ϸ���")){
				file.setType("default");
			}
			else{
				file.setType(catalog);
			}
			
			System.out.println("file id:"+id);
			
			if(id==0)//�½�
			{
				allService.getFileService().saveFile(file);
				System.out.println("createFileAction create file!");
			}
			else{//�༭
				file.setId(id);
				allService.getFileService().updateFile(file);
				System.out.println("createFileAction update file!");
			}
						
			return "success";
		}
		return "success";
	} 	


}
