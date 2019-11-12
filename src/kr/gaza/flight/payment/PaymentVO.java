package kr.gaza.flight.payment;

public class PaymentVO {
    private int payNum;
    private String orderNum;
    private String memberNum;
    private int milesNum;
    private int totalPrice;
    private String payDate;


    private int paymentType;
    private AccountVO accountVO;
    private CreditVO creditVO;

    public int getPayNum() {
        return payNum;
    }

    public void setPayNum(int payNum) {
        this.payNum = payNum;
    }

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }

    public String getMemberNum() {
        return memberNum;
    }

    public void setMemberNum(String memberNum) {
        this.memberNum = memberNum;
    }

    public int getMilesNum() {
        return milesNum;
    }

    public void setMilesNum(int milesNum) {
        this.milesNum = milesNum;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getPayDate() {
        return payDate;
    }

    public void setPayDate(String payDate) {
        this.payDate = payDate;
    }

    public int getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(int paymentType) {
        this.paymentType = paymentType;
    }

    public AccountVO getAccountVO() {
        return accountVO;
    }

    public void setAccountVO(AccountVO accountVO) {
        this.accountVO = accountVO;
    }

    public CreditVO getCreditVO() {
        return creditVO;
    }

    public void setCreditVO(CreditVO creditVO) {
        this.creditVO = creditVO;
    }
}
