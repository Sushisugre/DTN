package action;

import model.User;
import com.opensymphony.xwork2.ActionSupport;
import service.AllService;

public class RegisterAction extends ActionSupport {
	private AllService allService;
	private String username;
	private String password;
	private String password_check;
	private String nickname;

	
	public String getPassword_check() {
		return password_check;
	}

	public void setPassword_check(String passwordCheck) {
		password_check = passwordCheck;
	}

	
	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public AllService getAllService() {
		return allService;
	}

	public void setAllService(AllService allService) {
		this.allService = allService;
	}
	
	public String execute(){
		if(!allService.getUserService().isUsed(username))
		{
			User user=new User();
			user.setUsername(username);
			user.setPassword(password);
			user.setNickname(nickname);
			user.setSpace(5);
			user.setUsedspace(0);
			this.getAllService().getUserService().register(user);
			return "success";
		}
		return "input";		
	}

}