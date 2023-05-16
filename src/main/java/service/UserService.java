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

//    6. UserDataService sử dụng phương thức getUser(username, password) trả về User cho LoginController
    public User getUser(String username, String password){
        return JDBIConnector.get().withHandle(handle -> {
        String sql = "SELECT iduser, address, pass, name, phone, email, birthday, date_signup, sex, decentralization FROM user " +
                     "WHERE email = :email AND pass = :pass";

        return handle.createQuery(sql)
                     .bind("email", username)
                     .bind("pass", password)
                     .mapToBean(User.class)
                     .findOne()
                     .orElse(null);
    });
    }
    public static void main(String[] args) {
//        System.out.println(getInstance().getListUser());
        System.out.println(getInstance().getUser("ledang200234@gmail.com","123456").checkDecentralization());
    }
}
