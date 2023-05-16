package model;

import java.util.Date;

public class User {
    private String iduser;
    private String address;
    private String pass;
    private String name;
    private String phone;
    String email;
    Date birthday;
    Date datesignup;
    int sex;
    int decentralization;

    public User() {
    }

    public User(String iduser, String address, String pass, String name, String phone, String email, Date birthday, Date datesignup, int sex, int decentralization) {
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
        return "Đã bị khoá";
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

    public String getPhone() {
        return phone;
    }

    public String getEmail() {
        return email;
    }

    public Date getDatesignup() {
        return datesignup;
    }

    public Date getBirthday() {
        return birthday;
    }

    public int getSex() {
        return sex;
    }

    public int getDecentralization() {
        return decentralization;
    }

    public void setIduser(String iduser) {
        this.iduser = iduser;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public void setDatesignup(Date datesignup) {
        this.datesignup = datesignup;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public void setDecentralization(int decentralization) {
        this.decentralization = decentralization;
    }


    @Override
    public String toString() {
        return "User{" +
                "iduser='" + iduser + '\'' +
                ", address='" + address + '\'' +
                ", pass='" + pass + '\'' +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", birthday=" + birthday +
                ", datesignup=" + datesignup +
                ", sex=" + sex +
                ", decentralization=" + decentralization +
                '}';
    }

}
