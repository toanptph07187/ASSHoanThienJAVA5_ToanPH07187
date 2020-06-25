package hai.duong.ass.Entity;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;

import javax.persistence.OneToMany;
import javax.persistence.Table;

import javax.validation.constraints.NotEmpty;

import org.hibernate.validator.constraints.Length;

@Entity
@Table(name = "Departs")
public class Departs implements Serializable {

@NotEmpty(message = "Xin mời nhập Mã Phòng Ban")
@Length(max = 10,message = "Tối đa 10 ký tự ")
@Id
private String id;
@NotEmpty(message = "Xin mời nhập Tên Phòng Ban")
@Length(max = 10,message = "Tối đa 10 ký tự ")
private String name;
@OneToMany(mappedBy = "departs",fetch = FetchType.EAGER,cascade = CascadeType.REMOVE)
private Collection<Staffs> staffs;

public Departs() {
	// TODO Auto-generated constructor stub
}

public Collection<Staffs> getStaffs() {
	return staffs;
}

public void setStaffs(Collection<Staffs> staffs) {
	this.staffs = staffs;
}

public Departs(String id, String name, Collection<Staffs> staffs) {
	super();
	this.id = id;
	this.name = name;
	this.staffs = staffs;
}

public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}

}
