package service;
import java.util.List;

import model.User;
import dao.AllDAO;

public class UserService {
	private AllDAO allDAO;

	public AllDAO getAllDAO() {
		return allDAO;
	}

	public void setAllDAO(AllDAO allDAO) {
		this.allDAO = allDAO;
	}

	public void register(User user){
		System.out.println("register");
		this.getAllDAO().getUserDAO().save(user);
	}
	
	public void editInfo(User user){
		System.out.println("edit user info");
		this.getAllDAO().getUserDAO().update(user);
	}
	
	public void login(User user){
		
	}

	public boolean isUsed(String username){		
		if(!allDAO.getUserDAO().findByUsername(username).isEmpty()){
			return true;
		}
		return false;
	}

	public User isValid(String username,String password){
		List user_list=allDAO.getUserDAO().findByUsername(username);
		if(!user_list.isEmpty())
		{
			System.out.println("user_list!=null");
			User user=(User)user_list.get(0);
			if(user!=null&user.getPassword().equals(password))
			{
				System.out.println("equals password");
				return user;
			}		
		}
		return null;
	}

}
