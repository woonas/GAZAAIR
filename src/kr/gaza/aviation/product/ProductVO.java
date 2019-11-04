package kr.gaza.aviation.product;

public class ProductVO {
    private int productNum;
    private String depart;
    private String arrive;
    private int price;
    private int productCnt;
    private float productSale;
    private String regDate;

    public int getProductNum() {
        return productNum;
    }

    public void setProductNum(int productNum) {
        this.productNum = productNum;
    }

    public String getDepart() {
        return depart;
    }

    public void setDepart(String depart) {
        this.depart = depart;
    }

    public String getArrive() {
        return arrive;
    }

    public void setArrive(String arrive) {
        this.arrive = arrive;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getProductCnt() {
        return productCnt;
    }

    public void setProductCnt(int productCnt) {
        this.productCnt = productCnt;
    }

    public float getProductSale() {
        return productSale;
    }

    public void setProductSale(float productSale) {
        this.productSale = productSale;
    }

    public void setProductSale(int productSale) {
        this.productSale = productSale;
    }

    public String getRegDate() {
        return regDate;
    }

    public void setRegDate(String regDate) {
        this.regDate = regDate;
    }
}
