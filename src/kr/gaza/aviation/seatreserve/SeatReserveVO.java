package kr.gaza.aviation.seatreserve;

public class SeatReserveVO {
    private int seatReserveNum;
    private int flightNum;
    private int seatType;
    private int seatNo;
    private int reserved;

    public int getSeatReserveNum() {
        return seatReserveNum;
    }

    public void setSeatReserveNum(int seatReserveNum) {
        this.seatReserveNum = seatReserveNum;
    }

    public int getFlightNum() {
        return flightNum;
    }

    public void setFlightNum(int flightNum) {
        this.flightNum = flightNum;
    }

    public int getSeatType() {
        return seatType;
    }

    public void setSeatType(int seatType) {
        this.seatType = seatType;
    }

    public int getSeatNo() {
        return seatNo;
    }

    public void setSeatNo(int seatNo) {
        this.seatNo = seatNo;
    }

    public int getReserved() {
        return reserved;
    }

    public void setReserved(int reserved) {
        this.reserved = reserved;
    }
}
