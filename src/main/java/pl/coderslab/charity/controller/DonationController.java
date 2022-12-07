package pl.coderslab.charity.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.charity.model.Category;
import pl.coderslab.charity.model.Donation;
import pl.coderslab.charity.model.User;
import pl.coderslab.charity.repository.DonationRepository;
import pl.coderslab.charity.service.CategoryService;
import pl.coderslab.charity.service.DonationService;
import pl.coderslab.charity.service.InstitutionService;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.List;

@Controller
public class DonationController {
    private final InstitutionService institutionService;
    private final DonationService donationService;
    private final CategoryService categoryService;
    private final DonationRepository donationRepository;

    public DonationController(InstitutionService institutionService, DonationService donationService, CategoryService categoryService, DonationRepository donationRepository) {
        this.institutionService = institutionService;
        this.donationService = donationService;
        this.categoryService = categoryService;
        this.donationRepository = donationRepository;
    }

    @GetMapping("/home")
    public String homeAction(Model model) {
//        model.addAttribute("user", getPrincipal());
        int quantitySum = 0;
        for (Donation donation : donationRepository.getDonationsByUserId(getPrincipal().getId())) {
            quantitySum += donation.getQuantity();
        }
        model.addAttribute("donationsCount", donationRepository.getDonationsByUserId(getPrincipal().getId()).size());
        model.addAttribute("quantitySum", quantitySum);
        model.addAttribute("institutionList", institutionService.getAll());
        return "app/appHome";
    }

    private User getPrincipal() {
        User user = null;
        if (SecurityContextHolder.getContext().getAuthentication().getPrincipal() instanceof User) {
            user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        }
        return user;
    }

    @RequestMapping("/appInstitutions")
    public String appInstitutions(Model model) {
        model.addAttribute("institutionList", institutionService.getAll());
        return "app/appInstitutions";
    }

    @RequestMapping("/appContact")
    public String appContact() {
        return "app/appContact";
    }

    @RequestMapping("/appAbout")
    public String appAbout() {
        return "app/appAbout";
    }

    @RequestMapping("/appSteps")
    public String appSteps() {
        return "app/appSteps";
    }


    //Próba zrobienia formularze wieloetapowego na JS
    @GetMapping("/stepsForm")
    public String stepsForm(Model model) {
        model.addAttribute("donation", new Donation());
        model.addAttribute("categories", categoryService.getAll());
        model.addAttribute("institutionList", institutionService.getAll());
        return "app/appStepsForm";
    }

    @PostMapping("/stepsForm")
    public String stepsFormPost(@Valid Donation donation, BindingResult result){
        if (result.hasErrors()){
            return "app/appError";
        }
        donationService.save(donation);
        return "app/appConfirmation";
    }













    //Zakomentowany obszar to próba zrobienia formularze wieloetapowego tyko na Javie. Skończyłem na metodzie @GetMapping("/summary")
//    @GetMapping("/step1")
//    public String step1Form(Model model) {
//        model.addAttribute("donation", new Donation());
//        model.addAttribute("categories", categoryService.getAll());
//        return "app/appStep1";
//    }
//
//    @PostMapping("/step1")
//    public String step1(@ModelAttribute Donation donation, HttpSession ses, Model model) {
//        List<Category> categoryList = donation.getCategoryList();
//        if (!categoryList.isEmpty()) {
//            ses.setAttribute("categories", categoryList);
//            return "app/appStep2";
//        } else {
//            model.addAttribute("donation", new Donation());
//            model.addAttribute("categories", categoryService.getAll());
//            model.addAttribute("categoryListError", "Wybierz kategorię");
//            return "app/appStep1";
//        }
//    }
//
//    @PostMapping("/step2")
//    public String step2(@ModelAttribute Donation donation, HttpSession ses, Model model) {
//        ses.setAttribute("quantity", donation.getQuantity());
//        model.addAttribute("institutionList", institutionService.getAll());
//        return "app/appStep3";
//    }
//
//    @PostMapping("/step3")
//    public String step3(@ModelAttribute Donation donation, HttpSession ses) {
//        ses.setAttribute("instytution", donation.getInstitution());
//        return "app/appStep4";
//    }
//
//    @PostMapping("/step4")
//    public String step4(@ModelAttribute Donation donation, HttpSession ses, Model model) {
//        ses.setAttribute("street", donation.getStreet());
//        ses.setAttribute("city", donation.getCity());
//        ses.setAttribute("postCode", donation.getZipCode());
//        ses.setAttribute("phoneNumber", donation.getPhoneNumber());
//        ses.setAttribute("date", donation.getPickUpDate());
//        ses.setAttribute("time", donation.getPickUpTime());
//        ses.setAttribute("message", donation.getPickUpComment());
//        return "redirect:/summary";
//    }
//
//    @GetMapping("/summary")
//    public String summary(Model model, HttpSession ses) {
//        model.addAttribute("categories", ses.getAttribute("categories"));
//        return "app/appSummary";
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
