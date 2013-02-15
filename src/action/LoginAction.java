package action;

import java.util.Map;
import model.User;
import service.AllService;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;

//import dao.TestTableDAO;
//��ʵ�����ܺܺõĸ���SVN������= =
public class LoginAction extends ActionSupport {
	  private String username;
	  private String password;
	  private String nickname;
      private AllService allService;
	   


	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPassword() {
		return password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	   public void setAllService(AllService allService) {
		this.allService = allService;
	}
	public AllService getAllService() {
		return allService;
	}
	public String execute(){
		   
		   User user=this.getAllService().getUserService().isValid(username, password);		

		   if(user!=null){
			   System.out.println(username+password);
			   ActionContext context = ActionContext.getContext(); 
			   Map session=context.getSession();
	   			   
			 //��session�б���user����,������᲻���˷��˵�
			   session.put("user", user);
			   return "success"; 
		   }
		   else{
			   return "fail";
		   }
		   
	}
}
