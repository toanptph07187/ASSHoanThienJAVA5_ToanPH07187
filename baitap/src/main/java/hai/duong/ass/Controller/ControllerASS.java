package hai.duong.ass.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManagerFactory;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import hai.duong.ass.Entity.Staffs;
import hai.duong.ass.Entity.Users;
import hai.duong.ass.Services.UsersServices;

@Controller
public class ControllerASS {
	@Autowired
	private UsersServices usersServices;
	@Autowired
	EntityManagerFactory factorry;

	private Session getCU() {
		return factorry.unwrap(SessionFactory.class).openSession();
	}

	@GetMapping("login")
	public String Login(ModelMap model,HttpSession session) {
		session.invalidate();
		model.addAttribute("user", new Users());
		return "login/login";
	}

	@PostMapping(value = "login", params = "btn_login")
	public String Loginindex(ModelMap model, @Validated @ModelAttribute("user") Users users, BindingResult loi,
			HttpSession httpSession) {

		if (loi.hasErrors()) {

		} else {
			String username = users.getUsername();
			Users users2 = new Users();
			try {
				users2 = usersServices.findById(username);
			
				if (users2 != null) {
					if (users2.getPassword().equals(users.getPassword())) {
						httpSession.setAttribute("haiduong", users2);
						return index(model, httpSession);
					} else {
						model.addAttribute("mess", "Sai mật khẩu");
						httpSession.invalidate();

					}
				}
			} catch (Exception e) {
				model.addAttribute("mess", "Sai tên đăng nhập");
				httpSession.invalidate();

			}

		}

		return "login/login";
	}

	@GetMapping("index")
	public String index(ModelMap model, HttpSession httpSession) {
	
			Session session = getCU();
			String hql = "select r.staffs.id,r.staffs.Name,r.staffs.Photo,r.staffs.departs.name,sum(case when r.Type=1 then 1 else 0 end) "
					+ "  from Records r left join   r.staffs left join r.staffs.departs  GROUP BY    r.staffs.id,r.staffs.Name,r.staffs.Photo,r.staffs.departs.name "
					+ " ORDER BY sum(case when r.Type=1 then 1 else 0 end) DESC ";
			Query query = session.createQuery(hql).setFirstResult(0).setMaxResults(10);
			List<Object[]> list = query.list();
			model.addAttribute("Staffs", list);
			session.close();
		
		return "index/index";
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
