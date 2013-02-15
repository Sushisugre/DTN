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
	private String catalog;//选择框目录
	private String permission;
	private List<String> catalogs;
	private String type;//请求类型
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
		//初始化list
		//System.out.println("prepare");
		//this.setId(0);//为了以后查询数据库初始化

	}

	public String execute(){ 
		ActionContext context = ActionContext.getContext(); 
		Map session=context.getSession();
		User user=(User)session.get("user");
		
		if(type==null){
			System.out.println("null");
			return "failure";			
		}
		if(type.equals("initForm"))//初始化
		{   System.out.println("createFileAction init form!");
			//初始化list
			//List<Catalog> cats=allService.getCatalogService().findUserCatalog(user.getId());
		    //catalogs放在session中，这次的数据库查询是没必要的
		    List<Catalog> cats=(List<Catalog>)session.get("catalogs");
			List<String> cs=new ArrayList<String>();
			cs.add("默认分类");
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
			    //这玩意写得真是DT猥琐
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
		if (type != null && type.equals("submit")) {//保存文件 
			
			this.setTime(new Date());
			File file=new File();
			file.setUser(user);
			file.setTitle(title);
			file.setContent(content);
			file.setPermission(permission);
			file.setModifiedtime(time);
			if(catalog.equals("默认分类")){
				file.setType("default");
			}
			else{
				file.setType(catalog);
			}
			
			System.out.println("file id:"+id);
			
			if(id==0)//新建
			{
				allService.getFileService().saveFile(file);
				System.out.println("createFileAction create file!");
			}
			else{//编辑
				file.setId(id);
				allService.getFileService().updateFile(file);
				System.out.println("createFileAction update file!");
			}
						
			return "success";
		}
		return "success";
	} 	


}
