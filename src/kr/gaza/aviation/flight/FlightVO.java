package kr.gaza.aviation.flight;

public class FlightVO {
    private int flightNum;
    private String airplaneName;
    private int productNum;
    private String departTime;
    private String arriveTime;
    private float flightSale;

    public int getFlightNum() {
        return flightNum;
    }

    public void setFlightNum(int flightNum) {
        this.flightNum = flightNum;
    }

    public String getAirplaneName() {
        return airplaneName;
    }

    public void setAirplaneName(String airplaneName) {
        this.airplaneName = airplaneName;
    }

    public int getProductNum() {
        return productNum;
    }

    public void setProductNum(int productNum) {
        this.productNum = productNum;
    }

    public String getDepartTime() {
        return departTime;
    }

    public void setDepartTime(String departTime) {
        this.departTime = departTime;
    }

    public String getArriveTime() {
        return arriveTime;
    }

    public void setArriveTime(String arriveTime) {
        this.arriveTime = arriveTime;
    }

    public float getFlightSale() {
        return flightSale;
    }

    public void setFlightSale(float flightSale) {
        this.flightSale = flightSale;
    }
}
