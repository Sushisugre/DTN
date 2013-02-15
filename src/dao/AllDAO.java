package dao;

public class AllDAO {
   private FileDAO fileDAO;
   private UserDAO userDAO;

   private CatalogDAO catalogDAO;

public CatalogDAO getCatalogDAO() {
	return catalogDAO;
}
public void setCatalogDAO(CatalogDAO catalogDAO) {
	this.catalogDAO = catalogDAO;
}
public FileDAO getFileDAO() {
	return fileDAO;
}
public void setFileDAO(FileDAO fileDAO) {
	this.fileDAO = fileDAO;
}
public UserDAO getUserDAO() {
	return userDAO;
}
public void setUserDAO(UserDAO userDAO) {
	this.userDAO = userDAO;
}
   


}
