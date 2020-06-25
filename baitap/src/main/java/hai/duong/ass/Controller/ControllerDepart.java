package hai.duong.ass.Controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import hai.duong.ass.Entity.Departs;
import hai.duong.ass.Entity.Users;
import hai.duong.ass.Services.DepartsService;

@Controller

public class ControllerDepart {
	@Autowired
	private DepartsService departsService;

	@ModelAttribute("listdepart")
	public List<Departs> listDepart() {
		List<Departs> list = (List<Departs>) departsService.findAll();
		return list;
	}

	@GetMapping("departlist")
	public String indexdepart(HttpSession httpSession,ModelMap model) {
		if(httpSession.getAttribute("haiduong")==null) {
			model.addAttribute("user", new Users());
			httpSession.invalidate();
			return "login/login";
		}
		return "depart/DanhsachDepart";
	}

	@GetMapping("departxoa/{id}")
	public String xoaDepart(@PathVariable("id") String id,ModelMap model,HttpSession httpSession) {
		if(httpSession.getAttribute("haiduong")==null) {
			model.addAttribute("user", new Users());
			httpSession.invalidate();
			return "login/login";
		}
		departsService.deleteById(id);
		return "redirect:/departlist";
	}

	@GetMapping("departsua{id}")
	public String suaDepart(ModelMap model, @PathVariable("id") String id,HttpSession httpSession) {
		if(httpSession.getAttribute("haiduong")!=null) {
			Departs op = departsService.findById(id);
			if (op != null) {
				model.addAttribute("depart", op);

			} else {
				model.addAttribute("mes", "xxx");
				return indexdepart(httpSession,model);
			}
		}else {
			model.addAttribute("user", new Users());
			httpSession.invalidate();
			return "login/login";
		}
		
		return "depart/addoredit";

	}

	@PostMapping(value = "departaddoredit",params = "btn_add")
	public String addOredit(ModelMap model,@Validated @ModelAttribute("depart") Departs departs, BindingResult loi,HttpSession httpSession) {
		
		if(httpSession.getAttribute("haiduong")!=null) {
			if (loi.hasErrors()) {
				model.addAttribute("mes", "Xin mời kiểm tra lại thông tin");
			} else {
				try {
					departsService.save(departs);
					model.addAttribute("mes", "thanh cong");
				} catch (Exception e) {
					model.addAttribute("mes", "that bai");
				}
			}
		}
		else {
			model.addAttribute("user", new Users());
			httpSession.invalidate();
			return "login/login";
		}

		return "depart/addoredit";
	}

	@GetMapping("departadd")
	public String add(ModelMap model ,HttpSession session) {
		if(session.getAttribute("haiduong")==null) {
			model.addAttribute("user", new Users());
			session.invalidate();
			return "login/login";
		}
		model.addAttribute("depart", new Departs());
		return "depart/addoredit";
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
