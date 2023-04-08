package user;

public class UserDTO {
	
	private String id;
	private String pw;
	private String selected_menu;
	private String menu_price;
	private String menu_name;
	private String []time_check;
	private String res_inf;
	
	public String getMenu_name() {
		return menu_name;
	}
	public String getRes_inf() {
		return res_inf;
	}
	public void setRes_inf(String res_inf) {
		this.res_inf = res_inf;
	}
	public void setMenu_name(String menu_name) {
		this.menu_name = menu_name;
	}
	public String getMenu_price() {
		return menu_price;
	}
	public void setMenu_price(String menu_price) {
		this.menu_price = menu_price;
	}
	public String getSelected_menu() {
		return selected_menu;
	}
	public void setSelected_menu(String selected_menu) {
		this.selected_menu = selected_menu;
	}
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
	public String[] getTime_check() {
		return time_check;
	}
	public void setTime_check(String[] time_check) {
		this.time_check = time_check;
	}
	
}
