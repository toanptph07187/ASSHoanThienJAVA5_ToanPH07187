package hai.duong.ass.Controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManagerFactory;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import hai.duong.ass.Entity.Records;
import hai.duong.ass.Entity.Staffs;
import hai.duong.ass.Entity.Users;
import hai.duong.ass.JpaRepository.StaffsRepository;
import hai.duong.ass.Services.RecordsSevices;
import hai.duong.ass.Services.StaffsSevices;

@Controller
//@RequestMapping("record/")
public class ControllerRecords {
	@Autowired
	private RecordsSevices recordsSevices;
	@Autowired
	private StaffsSevices staffsSevices;
	@Autowired
	private EntityManagerFactory factory;
	@Autowired
	private JavaMailSender javaMailSender;

	public Session GetCu() {
		return factory.unwrap(SessionFactory.class).openSession();
	}

	@GetMapping("indexRecords")
	public String indexRecords(HttpSession session, ModelMap model) {
		if (session.getAttribute("haiduong") != null) {
			List<Records> list = recordsSevices.findAll();
			session.setAttribute("recordsList", list);
		} else {

			model.addAttribute("user", new Users());
			session.invalidate();
			return "login/login";
		}

		return "record/indexRecords";
	}

	@GetMapping("recordxoa/{id}")
	public String XoaRecord(ModelMap model, HttpSession session, @PathVariable("id") int id) {
		if (session.getAttribute("haiduong") != null) {
			recordsSevices.deleteById(id);
		} else {
			model.addAttribute("user", new Users());
			session.invalidate();
			return "login/login";

		}
		
		return "redirect:/indexRecords";
	}

	@ModelAttribute("recordkiluat")
	public Map<Integer, String> listkiluat() {
		Map<Integer, String> kiluat = new HashMap<Integer, String>();
		kiluat.put(1, "Thành Tích");
		kiluat.put(0, "Kỉ luật");
		return kiluat;
	}

	@GetMapping("recordadd")
	public String addrecord(ModelMap model, HttpSession session) {

		if (session.getAttribute("haiduong") != null) {
			model.addAttribute("record", new Records());
		} else {
			model.addAttribute("user", new Users());
			session.invalidate();
			return "login/login";
		}
		return "record/addOrupdate";
	}

	@GetMapping("recordsua{id}")
	public String suaRecord(@PathVariable("id") int id, ModelMap model, HttpSession session) {
		if (session.getAttribute("haiduong") != null) {
			Records record = recordsSevices.findById(id);
			if (record != null) {
				model.addAttribute("record", record);
			} 
		} else {
			model.addAttribute("user", new Users());
			session.invalidate();
			return "login/login";

		}

		return "record/addOrupdate";
	}

	@PostMapping(value = "recordaddorupdate", params = "add")
	public String addorupdate(HttpSession session, ModelMap model, @Validated @ModelAttribute("record") Records record,
			BindingResult loi) {

		if (session.getAttribute("haiduong") != null) {
			if (loi.hasErrors()) {
				model.addAttribute("mes", "Xin mời kiểm tra lại thông tin");
			} else {
				try {

				
					Staffs staff = staffsSevices.findById(record.getStaffs().getId());
			
					String subject = null;
					String body = null;
					
					if(record.getId()!=null && record.getId()>0) {
						if (record.getType() == 1) {
							subject = "Xin Chào Nv : " + staff.getName() + "" + "    \n Thông báo Cập nhật Kỷ luật sang Thành tích";
							body = record.getReason() + "" + " \n Thành tích này được lưu lại vào lúc " + record.getDate();

						} else if (record.getType() == 0) {
							subject = "Xin Chào Nv : " + staff.getName() + "" + "Thông báo Cập nhật Thành tích sang Kỷ Luật";
							body = record.getReason() + "" + " Kỷ luật này được lưu lại vào lúc "
									+ record.getDate().toString();
						}
					}
					else {
						if (record.getType() == 1) {
							subject = "Xin Chào Nv : " + staff.getName() + "" + "    \n Thông báo Thành Tích";
							body = record.getReason() + "" + " \n Thành tích này được lưu lại vào lúc " + record.getDate();

						} else if (record.getType() == 0) {
							subject = "Xin Chào Nv : " + staff.getName() + "" + "Thông báo Kỷ luật";
							body = record.getReason() + "" + " Kỷ luật này được lưu lại vào lúc "
									+ record.getDate().toString();
						}
					}
					
					

					try {

						SimpleMailMessage msg = new SimpleMailMessage();
						msg.setTo(staff.getEmail());
						msg.setSubject(subject);
						msg.setText(body);
						javaMailSender.send(msg);
						model.addAttribute("mes", "thanh cong email");
					} catch (Exception e) {
						e.printStackTrace();
						model.addAttribute("mes", "that bai email" + e.getMessage());
					}
					recordsSevices.save(record);
					model.addAttribute("mes", "Thành công");

				} catch (Exception e) {
					e.printStackTrace();
					model.addAttribute("mes", "Không thành công");
					// TODO: handle exception
				}
			}
		} else {
			model.addAttribute("user", new Users());
			session.invalidate();
			return "login/login";
		}
		return "record/addOrupdate";

	}

	@GetMapping("recordklnhanvien")
	public String kiluatNhanVien(ModelMap model, HttpSession httpSession) {
		if (httpSession.getAttribute("haiduong") != null) {
			Session session = GetCu();
			String hql = "SELECT r.staffs.Id, r.staffs.Name,  SUM(case when r.Type=1 then 1 else 0 end) , "
					+ " SUM(case when r.Type=0 then 1 else 0 end) ,SUM(case when r.Type=1 then 1 else 0 end) -  SUM(case when r.Type=0 then 1 else 0 end) "
					+ "FROM Records r  GROUP BY r.staffs.Id , r.staffs.Name ";
			Query query = session.createQuery(hql);
			List<Object[]> list = query.list();
			model.addAttribute("listklnv", list);
		} else {
			model.addAttribute("user", new Users());
			httpSession.invalidate();
			return "login/login";
		}
		return "record/showklnv";

	}

	// from SanPham sp left join fetch sp.loaiSanPham where sp.loaiSanPham.loaiban=
	// 'WEB' And sp.thucTrang=1
	@GetMapping("recordklphongban")
	public String kiluatphongban(ModelMap model, HttpSession httpSession) {
		if (httpSession.getAttribute("haiduong") != null) {
			Session session = GetCu();
			String hql = "SELECT  r.staffs.departs.id, r.staffs.departs.name, SUM(case when r.Type=1 then 1 else 0 end) ,"
					+ " SUM(case when r.Type=0 then 1 else 0 end) ,SUM(case when r.Type=1 then 1 else 0 end) -  SUM(case when r.Type=0 then 1 else 0 end) "
					+ "from Records r left join  r.staffs left join  r.staffs.departs  GROUP BY r.staffs.departs.id, r.staffs.departs.name";
			Query query = session.createQuery(hql);
			// .setFirstResult(0).setMaxResults(10)
			List<Object[]> list = query.list();
			model.addAttribute("listklpb", list);
		} else {
			model.addAttribute("user", new Users());
			httpSession.invalidate();
			return "login/login";
		}
		return "record/showklpb";
	}

	@ModelAttribute("anhimage")
	public List<String> listanh(){
		
		
		List<String> list=new ArrayList<String>();
		list.add("/static/img/instagram/inst_1.png");
		list.add("/static/img/instagram/inst_2.png");
		list.add("/static/img/instagram/inst_3.png");
		list.add("/static/img/instagram/inst_4.png");
		list.add("/static/img/instagram/inst_5.png");
		list.add("/static/img/daidien.jpg");
		list.add("/static/img/arrivel/arrivel_5.png");
		return list;
		
	}
}
