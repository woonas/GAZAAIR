package kr.gaza.flight;

public class FlightVO {
    private int flightNum;
    private int airplaneNum;
    private int productNum;
    private int departTime;
    private int arriveTime;
    private int sale;

    public int getFlightNum() {
        return flightNum;
    }

    public void setFlightNum(int flightNum) {
        this.flightNum = flightNum;
    }

    public int getAirplaneNum() {
        return airplaneNum;
    }

    public void setAirplaneNum(int airplaneNum) {
        this.airplaneNum = airplaneNum;
    }

    public int getProductNum() {
        return productNum;
    }

    public void setProductNum(int productNum) {
        this.productNum = productNum;
    }

    public int getDepartTime() {
        return departTime;
    }

    public void setDepartTime(int departTime) {
        this.departTime = departTime;
    }

    public int getArriveTime() {
        return arriveTime;
    }

    public void setArriveTime(int arriveTime) {
        this.arriveTime = arriveTime;
    }

    public int getSale() {
        return sale;
    }

    public void setSale(int sale) {
        this.sale = sale;
    }
}
