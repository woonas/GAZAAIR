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
	//��й�ȣ����
	public int updatePassword(String memberId, String oldPwd, String newPwd);
	//ȸ��Ż��
	public int delAccount(String id, String pwd);
	//���̵�ã��
	public String findId(RegisterVO vo);
	//��й�ȣã��
	public String findPw(RegisterVO vo);
}
