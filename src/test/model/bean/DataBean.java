package test.model.bean;


//해당클래스 : 파라미터를 저장하는 목적. 
public class DataBean {        //0409
	
	private String id;
	private String pw;
	private String name;
	private String age;

	//메서드 만들기: 우클릭 - 소스- generate setter and getter
	
	//자동 제공 ~ 
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age+"세";
	}
	
	public void setAge(String age) { // 나이 최대 150세 까지 조건 주기
		int a = Integer.parseInt(age);
		if(a > 0 && a <= 150) {
			this.age = age;
		}
	}

}
















