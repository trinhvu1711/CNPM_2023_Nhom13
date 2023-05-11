package model;

public class DetailProduct {
    String idpr;
    String describe;
    int amount;
    double weight;
    String nameCar;
    public DetailProduct(){

    }
    public DetailProduct(String idpr, String describe, int amount, double weight, String nameCar) {
        this.idpr = idpr;
        this.describe = describe;
        this.amount = amount;
        this.weight = weight;
        this.nameCar = nameCar;
    }

    public String getIdpr() {
        return idpr;
    }

    public void setIdpr(String idpr) {
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
