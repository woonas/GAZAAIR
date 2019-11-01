package kr.gaza.booking;

public class JourneyVO {
    private String journeyType;
    private String[] airportFrom;
    private String[] airportTo;
    private String[] flightDate;
    private int numOfAdult;
    private int numOfChild;
    private int numOfInfant;

    public String getJourneyType() {
        return journeyType;
    }

    public void setJourneyType(String journeyType) {
        this.journeyType = journeyType;
    }

    public String[] getAirportFrom() {
        return airportFrom;
    }

    public void setAirportFrom(String[] airportFrom) {
        this.airportFrom = airportFrom;
    }

    public String[] getAirportTo() {
        return airportTo;
    }

    public void setAirportTo(String[] airportTo) {
        this.airportTo = airportTo;
    }

    public String[] getFlightDate() {
        return flightDate;
    }

    public void setFlightDate(String[] flightDate) {
        this.flightDate = flightDate;
    }

    public int getNumOfAdult() {
        return numOfAdult;
    }

    public void setNumOfAdult(int numOfAdult) {
        this.numOfAdult = numOfAdult;
    }

    public int getNumOfChild() {
        return numOfChild;
    }

    public void setNumOfChild(int numOfChild) {
        this.numOfChild = numOfChild;
    }

    public int getNumOfInfant() {
        return numOfInfant;
    }

    public void setNumOfInfant(int numOfInfant) {
        this.numOfInfant = numOfInfant;
    }
}
