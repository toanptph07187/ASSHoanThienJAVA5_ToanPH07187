package hai.duong.ass.Entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "Users")
public class Users implements Serializable{
@Id
@NotBlank(message = "Xin mời nhập UserName")
private String Username;
@NotBlank(message = "Xin mời nhập PassWord")
private String Password;
private String Fullname;
public Users() {
	// TODO Auto-generated constructor stub
}
public Users(String username, String password, String fullname) {
	super();
	Username = username;
	Password = password;
	Fullname = fullname;
}
public String getUsername() {
	return Username;
}
public void setUsername(String username) {
	Username = username;
}
public String getPassword() {
	return Password;
}
public void setPassword(String password) {
	Password = password;
}
public String getFullname() {
	return Fullname;
}
public void setFullname(String fullname) {
	Fullname = fullname;
}

}
