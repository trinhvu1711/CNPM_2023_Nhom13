package model;

public class Menu {
    String nameKind;
    String idbrand;
    String idkind;
    String nameBrand;
    String idBrand;

    public Menu() {

    }

    public Menu(String nameKind, String idbrand, String idkind, String nameBrand, String idBrand) {
        this.nameKind = nameKind;
        this.idbrand = idbrand;
        this.idkind = idkind;
        this.nameBrand = nameBrand;
        this.idBrand = idBrand;
    }

    public String getNameKind() {
        return nameKind;
    }

    public void setNameKind(String nameKind) {
        this.nameKind = nameKind;
    }

    public String getIdbrand() {
        return idbrand;
    }

    public void setIdbrand(String idbrand) {
        this.idbrand = idbrand;
    }

    public String getIdkind() {
        return idkind;
    }

    public void setIdkind(String idkind) {
        this.idkind = idkind;
    }

    public String getNameBrand() {
        return nameBrand;
    }

    public void setNameBrand(String nameBrand) {
        this.nameBrand = nameBrand;
    }

    public String getIdBrand() {
        return idBrand;
    }

    public void setIdBrand(String idBrand) {
        this.idBrand = idBrand;
    }
}
