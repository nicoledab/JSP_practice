package test.model.bean;


//�ش�Ŭ���� : �Ķ���͸� �����ϴ� ����. 
public class DataBean {        //0409
	
	private String id;
	private String pw;
	private String name;
	private String age;

	//�޼��� �����: ��Ŭ�� - �ҽ�- generate setter and getter
	
	//�ڵ� ���� ~ 
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
		return age+"��";
	}
	
	public void setAge(String age) { // ���� �ִ� 150�� ���� ���� �ֱ�
		int a = Integer.parseInt(age);
		if(a > 0 && a <= 150) {
			this.age = age;
		}
	}

}
















