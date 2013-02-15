package service;
import dao.AllDAO;
import model.User;

public class RegisterService {
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

}
