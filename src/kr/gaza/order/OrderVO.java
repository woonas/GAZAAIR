package kr.gaza.order;

public class OrderVO {
    private int orderNum;
    private int memberNum;
    private int foodNum;
    private int CompanionNum;
    private int seatReserveNum;
    private String regDate;

    private int flightNum1;
    private int flightNum2;
    private int flightNum3;
    private int flightNum4;
    private int flightNum5;
    private int flightNum6;

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

    public int getFlightNum1() {
        return flightNum1;
    }

    public void setFlightNum1(int flightNum1) {
        this.flightNum1 = flightNum1;
    }

    public int getFlightNum2() {
        return flightNum2;
    }

    public void setFlightNum2(int flightNum2) {
        this.flightNum2 = flightNum2;
    }

    public int getFlightNum3() {
        return flightNum3;
    }

    public void setFlightNum3(int flightNum3) {
        this.flightNum3 = flightNum3;
    }

    public int getFlightNum4() {
        return flightNum4;
    }

    public void setFlightNum4(int flightNum4) {
        this.flightNum4 = flightNum4;
    }

    public int getFlightNum5() {
        return flightNum5;
    }

    public void setFlightNum5(int flightNum5) {
        this.flightNum5 = flightNum5;
    }

    public int getFlightNum6() {
        return flightNum6;
    }

    public void setFlightNum6(int flightNum6) {
        this.flightNum6 = flightNum6;
    }

    public String getRegDate() {
        return regDate;
    }

    public void setRegDate(String regDate) {
        this.regDate = regDate;
    }
}

