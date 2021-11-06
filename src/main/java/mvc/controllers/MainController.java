package mvc.controllers;

import mvc.models.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

//import javax.validation.Valid;

@Controller
public class MainController {

    @RequestMapping("/")
    public String showIndexPage() {
        return "index";
    }

    @RequestMapping("/users/registration")
    public String registrationPage(Model model) {
        model.addAttribute("user", new User());
        return "registration";
    }

    @RequestMapping("/users/registration-completed")
    public String registrationCompletedPage(@Valid @ModelAttribute("user") User user, BindingResult bindingResult) {
//        return bindingResult.hasErrors()? "registration": "registration-completed";
        if(bindingResult.hasErrors()) {
            return "registration";
        }
        return "registration-completed";
    }



    @RequestMapping("**")
    public String redirectAll() {
        return "index";
    }

}
