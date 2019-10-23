package kr.goott.kimbo.register;

public interface RegisterInterface {
	//아이디 중복검사
	public boolean idCheck(String userId);
	//회원가입 등록
	public int insertRecord(RegisterVO vo);
	//로그인
	public void login(RegisterVO vo);
	//회원정보 가져오기
	public void getRegister(RegisterVO vo);
	//회원정보 수정
	public int updateRecord(RegisterVO vo);
	
	
}
