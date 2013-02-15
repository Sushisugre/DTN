package service;
import java.util.List;

import model.Catalog;
import model.File;
import model.User;
import dao.AllDAO;

public class FileService {
  private AllDAO allDAO;

public AllDAO getAllDAO() {
	return allDAO;
}

public void setAllDAO(AllDAO allDAO) {
	this.allDAO = allDAO;
}

public Boolean isExist(int id){
	if(allDAO.getFileDAO().findById(id)!=null)
	{
		System.out.println("新建文件");
		return true;
	}
	System.out.println("修改文件");
	return false;	
}

public void saveFile(File file){
	System.out.println("save file:"+file.getTitle());
	this.getAllDAO().getFileDAO().save(file);
}

public void updateFile(File file){
	this.getAllDAO().getFileDAO().update(file);
}

public void deleteFile(int id){
	File file=findFile(id);
	this.getAllDAO().getFileDAO().delete(file);
}

public File findFile(int id){
	return allDAO.getFileDAO().findById(id);
}

public List findUserFile(User user){
	
	return allDAO.getFileDAO().findByOwner(user);
}

public List findUserDefault(User user){
	return allDAO.getFileDAO().findByType(user,"default");
}

public List findCatalogFile(User user,String catalog){
	return allDAO.getFileDAO().findByType(user, catalog);
}

public List findAll(){
	return this.getAllDAO().getFileDAO().findAll();
}

}
