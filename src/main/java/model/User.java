package model;

import java.util.Date;

public class User {
    private String iduser;
    private String address;
    private String pass;
    private String name;
    private int phone;
    String email;
    Date birthday;
    Date datesignup;
    int sex;
    int decentralization;

    public User() {
    }

    public User(String iduser, String address, String pass, String name, int phone, String email, Date birthday, Date datesignup, int sex, int decentralization) {
        this.iduser = iduser;
        this.address = address;
        this.pass = pass;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.birthday = birthday;
        this.datesignup = datesignup;
        this.sex = sex;
        this.decentralization = decentralization;
    }

    // in chữ User nếu decentralization 0, Admin bằng 1, còn lại là tk bị khoá
    public String checkDecentralization() {
        if (this.decentralization == 0) {
            return "User";
        } else if (this.decentralization == 1) {
            return "Admin";
        }
        return "Khoá";
    }

    public String getIduser() {
        return iduser;
    }

    public String getAddress() {
        return address;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getName() {
        return name;
    }

    public int getPhone() {
        return phone;
    }

    public String getEmail() {
        return email;
    }

    public Date getDatesignup() {
        return datesignup;
    }


}
