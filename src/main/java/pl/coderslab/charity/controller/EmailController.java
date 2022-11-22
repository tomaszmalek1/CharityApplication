package pl.coderslab.charity.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.charity.model.Donation;
import pl.coderslab.charity.model.User;
import pl.coderslab.charity.repository.DonationRepository;
import pl.coderslab.charity.service.DonationService;
import pl.coderslab.charity.service.EmailSenderService;
import pl.coderslab.charity.service.InstitutionService;

import javax.mail.MessagingException;

@Controller
public class EmailController {
    private EmailSenderService emailSenderService;
    private DonationService donationService;
    private InstitutionService institutionService;

    private DonationRepository donationRepository;

    public EmailController(EmailSenderService emailSenderService, DonationService donationService, InstitutionService institutionService, DonationRepository donationRepository) {
        this.emailSenderService = emailSenderService;
        this.donationService = donationService;
        this.institutionService = institutionService;
        this.donationRepository = donationRepository;
    }

    @GetMapping("/sendEmail")
    public String sendEmail() {
        return "redirect:/";
    }

    @PostMapping("/sendEmail")
    public String sendEmail(@RequestParam String name, @RequestParam String surname, @RequestParam String email, @RequestParam String text, Model model) {
        String message = "Imię: " + name + "\n"
                + "Nazwisko: " + surname + "\n"
                + "E-mail: " + email + "\n"
                + "Wiadomość: " + text;
        if (!name.isEmpty() && !surname.isEmpty() && !email.isEmpty() && !text.isEmpty()) {
            try {
                emailSenderService.sendEmail("portfoliolabtest@gmail.com", "Formularz kontaktowy - zapytanie", message);
            } catch (MessagingException e) {
                model.addAttribute("messageError", "Błąd wysyłania wiadomości");
                return "index";
            }
        } else {
            int quantitySum = 0;
            for (Donation donation : donationService.getAll()) {
                quantitySum += donation.getQuantity();
            }
            model.addAttribute("donationsCount", donationService.getAll().size());
            model.addAttribute("quantitySum", quantitySum);
            model.addAttribute("institutionList", institutionService.getAll());
            model.addAttribute("messageError", "Nie wypełniono wszystkich pól!");
            return "index";
        }
        return "messageConfirmation";
    }

    private User getPrincipal() {
        User user = null;
        if (SecurityContextHolder.getContext().getAuthentication().getPrincipal() instanceof User) {
            user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        }
        return user;
    }

    @GetMapping("/userSendEmail")
    public String userSendEmail() {
        return "redirect:/home";
    }

    @PostMapping("/userSendEmail")
    public String userSendEmail(@RequestParam String text, Model model) {
        String message = "Imię: " + getPrincipal().getName() + "\n"
                + "Nazwisko: " + getPrincipal().getLastName() + "\n"
                + "E-mail: " + getPrincipal().getEmail() + "\n"
                + "Wiadomość: " + text;
        if (!text.isEmpty()) {
            try {
                emailSenderService.sendEmail("portfoliolabtest@gmail.com", "Formularz kontaktowy - zapytanie", message);
            } catch (MessagingException e) {
                model.addAttribute("messageError", "Błąd wysyłania wiadomości");
                return "app/appHome";
            }
        } else {
            int quantitySum = 0;
            for (Donation donation : donationRepository.getDonationsByUserId(getPrincipal().getId())) {
                quantitySum += donation.getQuantity();
            }
            model.addAttribute("donationsCount", donationRepository.getDonationsByUserId(getPrincipal().getId()).size());
            model.addAttribute("quantitySum", quantitySum);
            model.addAttribute("institutionList", institutionService.getAll());
            model.addAttribute("messageError", "Nie podano wiadomości");
            return "app/appHome";
        }
        return "app/userMessageConfirmation";
    }
}
