package hai.duong.ass.Entity;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;


@Entity 
@Table(name = "Staffs")
public class Staffs implements Serializable {

	@NotBlank(message = "Xin mời nhập mã nhân viên")
	@Length(max = 10,message = "Mã nhân viên tối đa 10 ký tự")
	@Id
	private String Id;
	@NotBlank(message = "Xin mời nhập Họ tên Nhân viên")
	@Length(max = 50,message = "Họ tên Nhân viên tối đa 50 ký tự")
	private String Name;
	@NotNull(message = "Xin mời chọn giới tính")
	private Boolean Gender;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	
	@NotNull(message = "Xin mời nhập Ngày/Tháng/Năm sinh")
	@Past(message = "Ngày Tháng Năm phải thời gian trong quá khứ")
	private Date Birthday;
	@NotNull(message = "Xin mời chọn ảnh")
	private String Photo;
	@NotBlank(message = "Xin mời nhập Email")
	@Length(max = 50,message = "Email tối đa 50 ký tự")
	@Email(message = "Sai  địng dạng Email")
	private String Email;
	@NotNull(message = "Xin mời nhập số điện thoại")
	@Pattern(regexp = "[0-9]{9,10}",message = "Sai định dạng số điện thoại")
	private String Phone;
	@NotNull(message = "Xin mời nhập điểm")
	@DecimalMax(value = "10.0",message = "Lương nhập tối đa là 10")
	@DecimalMin(value = "1.0",message = "Lương nhập tốii thiểu là 1")
	private Double Salary;
	@NotBlank(message = "Xin mời nhập Ghi chú")
	@Length(max = 500,message = "Ghi chú tối đa 500 ký tự")
	private String Notes;
	@ManyToOne
	@JoinColumn(name = "departid")
	private Departs departs;
	@OneToMany(mappedBy = "staffs",fetch = FetchType.EAGER,cascade = CascadeType.REMOVE)
	private Collection<Records> records;
	
	public Staffs() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return Id;
	}

	public void setId(String id) {
		Id = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public Boolean getGender() {
		return Gender;	
	}

	public void setGender(Boolean gender) {
		Gender = gender;
	}

	public Date getBirthday() {
		return Birthday;
	}

	public void setBirthday(Date birthday) {
		Birthday = birthday;
	}

	public String getPhoto() {
		return Photo;
	}

	public void setPhoto(String photo) {
		Photo = photo;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public Double getSalary() {
		return Salary;
	}

	public void setSalary(Double salary) {
		Salary = salary;
	}

	public String getNotes() {
		return Notes;
	}

	public void setNotes(String notes) {
		Notes = notes;
	}

	public Departs getDeparts() {
		return departs;
	}

	public void setDeparts(Departs departs) {
		this.departs = departs;
	}

	public Collection<Records> getRecords() {
		return records;
	}

	public void setRecords(Collection<Records> records) {
		this.records = records;
	}

	public Staffs(String id, String name, Boolean gender, Date birthday, String photo, String email, String phone,
			Double salary, String notes, Departs departs, Collection<Records> records) {
		super();
		Id = id;
		Name = name;
		Gender = gender;
		Birthday = birthday;
		Photo = photo;
		Email = email;
		Phone = phone;
		Salary = salary;
		Notes = notes;
		this.departs = departs;
		this.records = records;
	}
	

}
