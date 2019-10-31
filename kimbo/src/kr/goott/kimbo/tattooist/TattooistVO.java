package kr.goott.kimbo.tattooist;

public class TattooistVO {
	private int no; //작가번호
	private String role;
	private String kakao;
	private String profile;
	//////////////////////////
	private int num; //작가번호
	private String title;
	private String userId;
	private String addr;
	private String content;
	private String genre;
	private String subject;
	private String part;
	private String price;
	private String sigan;
	private String writedate;
	private String photo2;
	private String photo3;
	private String photo1;
	private String filename1;
	private String filename2;
	private String filename3;
	private String ip;
	private int hit;
	/////////////
	private String oldfilename1;
	private String oldfilename2;
	private String oldfilename3;
	///////////
	private int cnt;
	
	public TattooistVO() {}
	public TattooistVO(int num, String userid, String photo1, String filename1) {
		this.num=num;
		this.userId=userId;
		this.photo1=photo1;
		this.filename1=filename1;
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
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
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getPart() {
		return part;
	}
	public void setPart(String part) {
		this.part = part;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getSigan() {
		return sigan;
	}
	public void setSigan(String sigan) {
		this.sigan = sigan;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	public String getPhoto2() {
		return photo2;
	}
	public void setPhoto2(String photo2) {
		this.photo2 = photo2;
	}
	public String getPhoto3() {
		return photo3;
	}
	public void setPhoto3(String photo3) {
		this.photo3 = photo3;
	}
	public String getPhoto1() {
		return photo1;
	}
	public void setPhoto1(String photo1) {
		this.photo1 = photo1;
	}
	public String getFilename1() {
		return filename1;
	}
	public void setFilename1(String filename1) {
		this.filename1 = filename1;
	}
	public String getFilename2() {
		return filename2;
	}
	public void setFilename2(String filename2) {
		this.filename2 = filename2;
	}
	public String getFilename3() {
		return filename3;
	}
	public void setFilename3(String filename3) {
		this.filename3 = filename3;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getOldfilename1() {
		return oldfilename1;
	}
	public void setOldfilename1(String oldfilename1) {
		this.oldfilename1 = oldfilename1;
	}
	public String getOldfilename2() {
		return oldfilename2;
	}
	public void setOldfilename2(String oldfilename2) {
		this.oldfilename2 = oldfilename2;
	}
	public String getOldfilename3() {
		return oldfilename3;
	}
	public void setOldfilename3(String oldfilename3) {
		this.oldfilename3 = oldfilename3;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
		
}
