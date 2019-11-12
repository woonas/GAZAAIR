package kr.gaza.flight.order;

public class OrderVO {
    private int orderNum;
    private int memberNum;
    private int foodNum;
    private int CompanionNum;
    private int seatReserveNum;
    private String regDate;

    private int[] flightNum = new int[6];
    private int numOfFlight;

    public int[] getFlightNum() {
        return flightNum;
    }

    public void setFlightNum(int flightNum) {
        this.flightNum[numOfFlight] = flightNum;
        numOfFlight++;
    }

    public int getNumOfFlight() {
        return numOfFlight;
    }

    public void setNumOfFlight(int numOfFlight) {
        this.numOfFlight = numOfFlight;
    }

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

    public String getRegDate() {
        return regDate;
    }

    public void setRegDate(String regDate) {
        this.regDate = regDate;
    }
}

