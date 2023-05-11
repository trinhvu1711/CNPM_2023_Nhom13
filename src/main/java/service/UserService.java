package service;
import database.JDBIConnector;
import model.User;

import java.util.List;
import java.util.stream.Collectors;
public class UserService {
    private static UserService instance;
    public static UserService getInstance() {
        if (instance == null) {
            instance = new UserService();
        }
        return instance;
    }
    // lấy ra list tài khoản khách hàng, select từ database
    public List<User> getListUser() {
        return JDBIConnector.get().withHandle(handle -> {
                return handle.createQuery("SELECT ID_USER,ADDRESS,PASSW,NAME_USER, PHONE, EMAIL,DATE_SIGNUP,SEX,Decentralization FROM user")
                    .mapToBean(User.class).collect(Collectors.toList());
        });
    }
    // phân quyền hoặc khoá tài khoản, database update decentralization
    public static void  updateUser( String idUser, int decentralization){
        JDBIConnector.get().withHandle(handle -> {
            return   handle.createUpdate("UPDATE `user` u set u.Decentralization= "+decentralization+"  WHERE u.ID_USER='"+idUser+"'").execute();
        });
    }
    public static void main(String[] args) {
        System.out.println(getInstance().getListUser());
    }
}
