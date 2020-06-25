package hai.duong.ass.Controller;

import java.io.File;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import hai.duong.ass.Entity.Departs;
import hai.duong.ass.Entity.Staffs;
import hai.duong.ass.Entity.Users;
import hai.duong.ass.JpaRepository.StaffsRepository;
import hai.duong.ass.Services.DepartsService;
import hai.duong.ass.Services.StaffsSevices;

@Controller
//@RequestMapping("/staffs/")
public class ControllerStaffs {
	@Autowired
	private StaffsSevices staffsSevices;
	@Autowired
	private DepartsService departsService;
	@Autowired
	private ServletContext context;

	@GetMapping("stafflist")
	public String indexStaff(HttpSession session, ModelMap model) {
		if (session.getAttribute("haiduong") != null) {
			List<Staffs> list = staffsSevices.findAll();
			session.setAttribute("listStaffs", list);
			List<Departs> listdepart = departsService.findAll();
			session.setAttribute("listdepart", listdepart);
		} else {
			model.addAttribute("user", new Users());
			session.invalidate();
			return "login/login";
		}

		return "staffs/indexStaff";
	}

	@GetMapping("staffsthem")
	public String themStaff(ModelMap model, HttpSession session) {
		if (session.getAttribute("haiduong") != null) {
			model.addAttribute("staff", new Staffs());
		} else {
			model.addAttribute("user", new Users());
			session.invalidate();
			return "login/login";
		}

		return "staffs/addorupdateStaffs";
	}

	@GetMapping("staffssua{id}")
	public String suaSatff(@PathVariable("id") String id, ModelMap model, HttpSession session) {
		if (session.getAttribute("haiduong") != null) {
			Staffs staff = staffsSevices.findById(id);
			if (staff != null) {
				model.addAttribute("staff", staff);

			} else {
				return indexStaff(session, model);
			}

		} else {
			model.addAttribute("user", new Users());
			session.invalidate();
			return "login/login";
		}
		return "staffs/addorupdateStaffs";
	}

	@PostMapping(value = "staffsaddorupdate", params = "add")
	public String addOrUpdate(ModelMap model, @Validated @ModelAttribute("staff") Staffs staff, BindingResult loi,
			@RequestParam("photonv") MultipartFile photo, HttpSession session) {
		if (session.getAttribute("haiduong") != null) {
			if (!photo.isEmpty()) {
				try {
					String photoPath = context.getRealPath("/imageNV/" + photo.getOriginalFilename());
					photo.transferTo(new File(photoPath));
					String filenane = photo.getOriginalFilename();
					staff.setPhoto(photo.getOriginalFilename());
				} catch (Exception e) {
					e.printStackTrace();
					model.addAttribute("mes", "that bai file");
				}
			}

			if (loi.hasErrors()) {
				model.addAttribute("mes", "Xin mời kiểm tra lại thông tin");
			} else {

				try {

					staffsSevices.save(staff);
					model.addAttribute("mes", "Thành công");

				} catch (Exception e) {
					e.printStackTrace();
					model.addAttribute("mes", "Thất bại");
				}

			}
		} else {
			model.addAttribute("user", new Users());
			session.invalidate();
			return "login/login";
		}

		return "staffs/addorupdateStaffs";

	}

	@GetMapping("staffsxoa/{id}")
	public String xoaStaffs(@PathVariable("id") String id, HttpSession session, ModelMap model) {
		if (session.getAttribute("haiduong") != null) {
			staffsSevices.deleteById(id);
		} else {
			model.addAttribute("user", new Users());
			session.invalidate();
			return "login/login";
		}

		return "redirect:/stafflist";
	}

	@PostMapping(value = "staffstimkiem", params = "timkiema")
	public String TimkiemStaffs(ModelMap model, HttpSession session, @RequestParam("timkiem") String name) {
		if (session.getAttribute("haiduong") != null) {

			List<Staffs> list = (List<Staffs>) session.getAttribute("listStaffs");
			List<Staffs> listtk = new ArrayList<Staffs>();
			if (name.length() > 0) {

				for (Staffs nv : list) {
					if (nv.getName().contains(name)) {
						listtk.add(nv);
						session.setAttribute("listStaffs", listtk);
						model.addAttribute("mess", listtk.size());
					}

				}

			} else {
				List<Staffs> listcu = staffsSevices.findAll();
				session.setAttribute("listStaffs", listcu);
			}

		} else {
			model.addAttribute("user", new Users());
			session.invalidate();
			return "login/login";
		}

		return "staffs/indexStaff";
	}
	
	@ModelAttribute("listdepart")
	public List<Departs> listDepart() {
		List<Departs> list = (List<Departs>) departsService.findAll();
		return list;
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
