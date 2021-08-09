package com.codingdojo.dojosurvey;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SurveyController {

	@RequestMapping("/")
	public String dojoSurvey() {
		return "index.jsp";
	}
	
	@RequestMapping(value="/result", method=RequestMethod.POST)
	public String dojoSurvey(Model model, @RequestParam(value="name") String name,
			@RequestParam(value="location") String location,
			@RequestParam(value="language") String language,
			@RequestParam(value="comment") String comment) {
		if(name!=null && name!="") {
			model.addAttribute("name", name);			
		}
		if(location!=null && location!="") {
			model.addAttribute("location", location);
		}
		if(language!=null && language!="") {
			model.addAttribute("language", language);
		}
		if(comment!=null && comment!="") {
			model.addAttribute("comment", comment);
		}
		return "result.jsp";
	}
}
