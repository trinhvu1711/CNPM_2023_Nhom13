package service;

import database.JDBIConnector;
import model.DetailProduct;
import model.Product;
import model.User;

import java.util.List;
import java.util.stream.Collectors;

public class ProductService {
    private static ProductService instance;
    public static ProductService getInstance() {
        if (instance == null) {
            instance = new ProductService();
        }
        return instance;
    }
    //lấy ra list sản phẩm
    public List<DetailProduct> getListProduct() {
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("SELECT d.idpr, p.namepr,d.amount, d.nameCar,b.`name`,p.price, i.url FROM detailpr d JOIN product p ON p.idpr=d.idpr JOIN img i on i.idpr= p.idpr JOIN kind k on k.idkind= p.idkind JOIN brand b ON b.idBrand= k.idBrand order by d.idpr asc;")
                    .mapToBean(DetailProduct.class).collect(Collectors.toList());
        });
    }
}
