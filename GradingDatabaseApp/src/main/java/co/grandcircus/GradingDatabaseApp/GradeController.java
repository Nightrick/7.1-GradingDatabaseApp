package co.grandcircus.GradingDatabaseApp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GradeController {
	
	@Autowired
	private GradeRepository repo;
	
	@RequestMapping("/")
	public String homePage() {
		return "homepage";
	}

}
