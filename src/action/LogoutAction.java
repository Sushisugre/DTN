package action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport{

public String execute(){
	
	ActionContext context = ActionContext.getContext(); 
	   Map session=context.getSession();
	   
	   session.clear();
	
	return "success";
}

}
