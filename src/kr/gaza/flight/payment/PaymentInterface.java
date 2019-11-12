package kr.gaza.flight.payment;

import kr.gaza.eventNpackage.alliance_event.EventVO;

import java.util.List;

public interface PaymentInterface {
    public List<PaymentVO> getAllRecord();

    public int paymentInsert(EventVO vo);

    public int paymentUpdate(EventVO vo);

    public int paymentDelete(int num);

    public void paymentSelect(EventVO vo);
}
