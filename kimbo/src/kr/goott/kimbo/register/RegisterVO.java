package kr.goott.kimbo.register;

public class RegisterVO {
	private int num;
	private String userId;
	private String userPwd;
	private String userName;
	private String gender;
	private String role;
	
	private String t1;
	private String t2;
	private String t3;	
	private String tel;//전화번호를 합친 값
	
	private String sido;
	private String gugun;
	private String addr;
	
	private String emailId;
	private String emailDomain;
	private String email; //이메일 합친 값
	
	private String birthYear;
	private String birthMonth;
	private String birthDate;
	private String birthDay;
	
	private String kakao;
	
	private String profile;
	private String oldProfile;
	
	private String regDate;
/////////////////////////////////////////////////////////////////
	private int status;
/////////////////////////////////////////////////////////////////

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getT1() {
		return t1;
	}

	public void setT1(String t1) {
		this.t1 = t1;
	}

	public String getT2() {
		return t2;
	}

	public void setT2(String t2) {
		this.t2 = t2;
	}

	public String getT3() {
		return t3;
	}

	public void setT3(String t3) {
		this.t3 = t3;
	}

	public String getTel() {
		return t1+"-"+t2+"-"+t3;
	}
	public void setTel(String tel) {
		this.tel = tel;
		
		//t1, t2, t3 전화번호 분리 "-"
		String t[]= tel.split("-");
		t1 = t[0];
		t2 = t[1];
		t3 = t[2];
	}

	public String getSido() {
		return sido;
	}

	public void setSido(String sido) {
		this.sido = sido;
	}

	public String getGugun() {
		return gugun;
	}

	public void setGugun(String gungu) {
		this.gugun = gungu;
	}

	public String getAddr() {
		return sido+" "+gugun;
	}

	public void setAddr(String addr) {
		this.addr = addr;
		
		String juso[]= addr.split(" ");
		sido = juso[0];
		gugun = juso[1];
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getEmailDomain() {
		return emailDomain;
	}

	public void setEmailDomain(String emailDomain) {
		this.emailDomain = emailDomain;
	}

	public String getEmail() {
		return emailId+"@"+emailDomain;
	}
	public void setEmail(String email) {
		this.email = email;
		
		String mail[] = email.split("@");
		emailId	= mail[0];
		emailDomain = mail[1];
	}

	public String getBirthYear() {
		return birthYear;
	}

	public void setBirthYear(String birthYear) {
		this.birthYear = birthYear;
	}

	public String getBirthMonth() {
		return birthMonth;
	}

	public void setBirthMonth(String birthMonth) {
		this.birthMonth = birthMonth;
	}

	public String getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}

	public String getBirthDay() {
		return birthYear+"-"+birthMonth+"-"+birthDate;
	}
	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
		
		String birth[] =birthDay.split("-");
		birthYear = birth[0];
		birthMonth = birth[1];
		birthDate = birth[2];
	}

	public String getKakao() {
		return kakao;
	}

	public void setKakao(String kakao) {
		this.kakao = kakao;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}
	
	public String getOldProfile() {
		return oldProfile;
	}

	public void setOldProfile(String oldProfile) {
		this.oldProfile = oldProfile;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	
	
}
