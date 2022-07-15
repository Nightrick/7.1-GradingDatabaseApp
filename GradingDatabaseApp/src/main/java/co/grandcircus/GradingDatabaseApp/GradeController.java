package co.grandcircus.GradingDatabaseApp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GradeController {
	
	@Autowired
	private GradeRepository repo;
	
	@RequestMapping("/")
	public String listGrades(Model model) {
		List<Grade> grades = repo.findAll();
		model.addAttribute("grades", grades);
		return "homepage";
	}
	
	@RequestMapping("/delete")
	public String deleteGrade(String id) {
		repo.deleteById(id);
		return "redirect:/";
	}
	
	@RequestMapping("/insert")
	public String insertGrade(Model model) {
		return "gradeform";
	}
	
	@PostMapping("/inputconfirmation")
	public String saveGrade(Model model, @RequestParam(required=false) String id, @RequestParam String name, @RequestParam String type, @RequestParam double score, @RequestParam double total) {
		Grade grade = new Grade(id, name, type, score, total);
		
		repo.save(grade);
		
		return "redirect:/";
	}

}
