package kr.goott.kimbo.register;

public interface RegisterInterface {
	//���̵� �ߺ��˻�
	public boolean idCheck(String userId);
	//ȸ������ ���
	public int insertRecord(RegisterVO vo);
	//�α���
	public void login(RegisterVO vo);
	//ȸ������ ��������
	public void getRegister(RegisterVO vo);
	//ȸ������ ����
	public int updateRecord(RegisterVO vo);
	
	
}
