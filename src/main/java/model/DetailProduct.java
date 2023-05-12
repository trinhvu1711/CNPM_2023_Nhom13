package model;

public class DetailProduct {
    int idpr;
    String describe;
    int amount;
    double weight;
    String nameCar;
     String namepr;
     String name;
     String url;
     int price;
    public DetailProduct(){

    }

    public String getNamepr() {
        return namepr;
    }

    public void setNamepr(String namepr) {
        this.namepr = namepr;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public DetailProduct(int idpr, String describe, int amount, double weight, String nameCar, String namepr, String name, String url, int price) {
        this.idpr = idpr;
        this.describe = describe;
        this.amount = amount;
        this.weight = weight;
        this.nameCar = nameCar;
        this.namepr = namepr;
        this.name = name;
        this.url = url;
        this.price = price;
    }

    public int getIdpr() {
        return idpr;
    }

    public void setIdpr(int idpr) {
        this.idpr = idpr;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public String getNameCar() {
        return nameCar;
    }

    public void setNameCar(String nameCar) {
        this.nameCar = nameCar;
    }
}
