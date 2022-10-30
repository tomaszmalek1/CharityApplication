package pl.coderslab.charity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.model.Donation;
import pl.coderslab.charity.service.DonationService;
import pl.coderslab.charity.service.InstitutionService;

@Controller
public class HomeController {
    private final InstitutionService institutionService;
    private final DonationService donationService;

    public HomeController(InstitutionService institutionService, DonationService donationService) {
        this.institutionService = institutionService;
        this.donationService = donationService;
    }

    @RequestMapping("/")
    public String indexAction(Model model) {
        int quantitySum = 0;
        for (Donation donation : donationService.getAll()) {
            quantitySum += donation.getQuantity();
        }
        model.addAttribute("donationsCount", donationService.getAll().size());
        model.addAttribute("quantitySum", quantitySum);
        model.addAttribute("institutionList", institutionService.getAll());
        return "index";
    }
}
