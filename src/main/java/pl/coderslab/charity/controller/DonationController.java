package pl.coderslab.charity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.charity.model.Donation;
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
        model.addAttribute("donation", new Donation());
        model.addAttribute("categories", categoryService.getAll());
        model.addAttribute("institutions", institutionService.getAll());
        return "app/appHome";
    }

    @PostMapping("/home")
    public String home(@Valid Donation donation, BindingResult result, HttpSession ses, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("categories", categoryService.getAll());
            model.addAttribute("institutions", institutionService.getAll());
            return "app/appHome";
        } else {
            ses.setAttribute("donation", donation);
            return "redirect:/summary";
        }
    }

    @GetMapping("/summary")
    public String summary(Model model, HttpSession ses) {
        Donation donation = (Donation) ses.getAttribute("donation");
        if (donation == null) {
            return "redirect:/home";
        } else {
            model.addAttribute("bags", donation.getQuantity());
            model.addAttribute("categories", donation.getCategoryList());
            model.addAttribute("street", donation.getStreet());
            model.addAttribute("city", donation.getCity());
            model.addAttribute("postCode", donation.getZipCode());
            model.addAttribute("phone", donation.getPhoneNumber());
            model.addAttribute("data", donation.getPickUpDate());
            model.addAttribute("time", donation.getPickUpTime());
            model.addAttribute("moreInfo", donation.getPickUpComment());
            model.addAttribute("institution", donation.getInstitution());
            return "app/appSummary";
        }
    }

    @PostMapping("/summary")
    public String addDonation(HttpSession ses) {
        Donation donation = (Donation) ses.getAttribute("donation");
        donationService.save(donation);
        ses.removeAttribute("donation");
        return "app/appConfirmation";
    }
}
