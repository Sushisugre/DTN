package action;

import java.util.Map;

import model.User;
import service.AllService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserInfoAction extends ActionSupport {
	private AllService allService;
	private String password;
	private String nickname;
	private String password_check;
	public AllService getAllService() {
		return allService;
	}
	public void setAllService(AllService allService) {
		this.allService = allService;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPassword_check() {
		return password_check;
	}
	public void setPassword_check(String passwordCheck) {
		password_check = passwordCheck;
	}
	
	public String execute(){
		
		ActionContext context = ActionContext.getContext(); 
		Map session=context.getSession();
		
		User user=(User)session.get("user");
		if(!password.isEmpty()){
			user.setPassword(password);
		}
		user.setNickname(nickname);
		allService.getUserService().editInfo(user);
		session.put("user",user);
		
		return "success";
	}
}
