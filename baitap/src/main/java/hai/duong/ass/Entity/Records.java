package hai.duong.ass.Entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Records")
public class Records implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private Integer id;

	private Integer Type;
	@NotBlank(message = "Xin mời nhập ghi chú")
	@Length(max = 200, message = "Ghi chú không quá 200 ký tự")
	private String Reason;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	@NotNull(message = "Xin mời nhập ngày tháng năm")
	private Date Date;

	@ManyToOne
	@JoinColumn(name = "staffid")

	private Staffs staffs;

	public Records(Integer id, Integer type, String reason, java.util.Date date, Staffs staffs) {
		super();
		this.id = id;
		Type = type;
		Reason = reason;
		Date = date;
		this.staffs = staffs;
	}

	public Records() {
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getType() {
		return Type;
	}

	public void setType(Integer type) {
		Type = type;
	}

	public String getReason() {
		return Reason;
	}

	public void setReason(String reason) {
		Reason = reason;
	}

	public Date getDate() {
		return Date;
	}

	public void setDate(Date date) {
		Date = date;
	}

	public Staffs getStaffs() {
		return staffs;
	}

	public void setStaffs(Staffs staffs) {
		this.staffs = staffs;
	}

}
