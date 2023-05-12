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
            return handle.createQuery("SELECT iduser,address, pass, name, phone, email, birthday, date_signup, sex,decentralization FROM user")
                    .mapToBean(User.class).collect(Collectors.toList());
        });
    }
    // phân quyền hoặc khoá tài khoản, database update decentralization
    public static void  updateUser( String idUser, int decentralization){
        JDBIConnector.get().withHandle(handle -> {
            return   handle.createUpdate("UPDATE `user` u set u.decentralization= "+decentralization+"  WHERE u.iduser='"+idUser+"'").execute();
        });
    }
    public static void main(String[] args) {
        System.out.println(getInstance().getListUser());
    }
}
