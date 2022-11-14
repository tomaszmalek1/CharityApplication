package pl.coderslab.charity.controller;

import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.model.Donation;
import pl.coderslab.charity.model.User;
import pl.coderslab.charity.service.CategoryService;
import pl.coderslab.charity.service.DonationService;
import pl.coderslab.charity.service.InstitutionService;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
public class DonationController {
    private final InstitutionService institutionService;
    private final DonationService donationService;
    private final CategoryService categoryService;

    public DonationController(InstitutionService institutionService, DonationService donationService, CategoryService categoryService) {
        this.institutionService = institutionService;
        this.donationService = donationService;
        this.categoryService = categoryService;
    }

    @GetMapping("/home")
    public String homeAction(Model model) {
//        model.addAttribute("user", getPrincipal());
        int quantitySum = 0;
        for (Donation donation : donationService.getAll()) {
            quantitySum += donation.getQuantity();
        }
        model.addAttribute("donationsCount", donationService.getAll().size());
        model.addAttribute("quantitySum", quantitySum);
        model.addAttribute("institutionList", institutionService.getAll());
        return "app/appHome";
    }

//    private User getPrincipal(){
//        User user = null;
//        if (SecurityContextHolder.getContext().getAuthentication().getPrincipal() instanceof User) {
//            user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//        }
//        return user;
//    }

    @RequestMapping("/appInstitutions")
    public String appInstitutions(Model model){
        model.addAttribute("institutionList", institutionService.getAll());
        return "app/appInstitutions";
    }

    @RequestMapping("/appContact")
    public String appContact(){
        return "app/appContact";
    }

    @RequestMapping("/appAbout")
    public String appAbout(){
        return "app/appAbout";
    }

    @RequestMapping("/appSteps")
    public String appSteps(){
        return "app/appSteps";
    }

    @GetMapping("/step1")
    public String step1Form(Model model) {
        model.addAttribute("donation", new Donation());
        model.addAttribute("categories", categoryService.getAll());
        return "app/appStep1";
    }

    @PostMapping("step1")
    public String step1() {
        return "redirect:step2";
    }

    @GetMapping("step2")
    public String step2Form() {
        return "app/appStep2";
    }

//    @PostMapping("/home")
//    public String home(@Valid Donation donation, BindingResult result, HttpSession ses, Model model) {
//        if (result.hasErrors()) {
//            model.addAttribute("categories", categoryService.getAll());
//            model.addAttribute("institutions", institutionService.getAll());
//            return "app/appHome";
//        } else {
//            ses.setAttribute("donation", donation);
//            return "redirect:/summary";
//        }
//    }
//
//    @GetMapping("/summary")
//    public String summary(Model model, HttpSession ses) {
//        Donation donation = (Donation) ses.getAttribute("donation");
//        if (donation == null) {
//            return "redirect:/home";
//        } else {
//            model.addAttribute("bags", donation.getQuantity());
//            model.addAttribute("categories", donation.getCategoryList());
//            model.addAttribute("street", donation.getStreet());
//            model.addAttribute("city", donation.getCity());
//            model.addAttribute("postCode", donation.getZipCode());
//            model.addAttribute("phone", donation.getPhoneNumber());
//            model.addAttribute("data", donation.getPickUpDate());
//            model.addAttribute("time", donation.getPickUpTime());
//            model.addAttribute("moreInfo", donation.getPickUpComment());
//            model.addAttribute("institution", donation.getInstitution());
//            return "app/appSummary";
//        }
//    }
//
//    @PostMapping("/summary")
//    public String addDonation(HttpSession ses) {
//        Donation donation = (Donation) ses.getAttribute("donation");
//        donationService.save(donation);
//        ses.removeAttribute("donation");
//        return "app/appConfirmation";
//    }
}
