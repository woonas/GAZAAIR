package kr.gaza.order;

public class OrderVO {
    private int orderNum;
    private int memberNum;
    private int foodNum;
    private int flightNum;
    private int CompanionNum;
    private int seatReserveNum;

    public int getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(int orderNum) {
        this.orderNum = orderNum;
    }

    public int getMemberNum() {
        return memberNum;
    }

    public void setMemberNum(int memberNum) {
        this.memberNum = memberNum;
    }

    public int getFoodNum() {
        return foodNum;
    }

    public void setFoodNum(int foodNum) {
        this.foodNum = foodNum;
    }

    public int getFlightNum() {
        return flightNum;
    }

    public void setFlightNum(int flightNum) {
        this.flightNum = flightNum;
    }

    public int getCompanionNum() {
        return CompanionNum;
    }

    public void setCompanionNum(int companionNum) {
        CompanionNum = companionNum;
    }

    public int getSeatReserveNum() {
        return seatReserveNum;
    }

    public void setSeatReserveNum(int seatReserveNum) {
        this.seatReserveNum = seatReserveNum;
    }
}
