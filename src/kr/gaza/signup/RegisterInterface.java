package kr.gaza.signup;

public interface RegisterInterface {
	//���̵� �ߺ�üũ
	public boolean idCheck(String userId);
	//ȸ������
	public int insertRecord(RegisterVO vo);
	//�α���
	public void login(RegisterVO vo);
	//ȸ��������������
	public void getRegister(RegisterVO vo);
	//ȸ����������
	public int updateRecord(RegisterVO vo);
	
}
