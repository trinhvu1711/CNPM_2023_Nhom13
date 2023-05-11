package model;

public class Product {
    String idpr;
    int discount;
    int price;
    String idkind;
    String namepr;
    public Product() {

    }
    public Product(String idpr, int discount, int price, String idkind, String namepr) {
        this.idpr = idpr;
        this.discount = discount;
        this.price = price;
        this.idkind = idkind;
        this.namepr = namepr;
    }

    public String getIdpr() {
        return idpr;
    }

    public void setIdpr(String idpr) {
        this.idpr = idpr;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getIdkind() {
        return idkind;
    }

    public void setIdkind(String idkind) {
        this.idkind = idkind;
    }

    public String getNamepr() {
        return namepr;
    }

    public void setNamepr(String namepr) {
        this.namepr = namepr;
    }
}
