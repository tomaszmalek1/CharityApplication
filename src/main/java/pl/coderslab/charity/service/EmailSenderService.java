package pl.coderslab.charity.service;

import javax.mail.MessagingException;

public interface EmailSenderService {
    void sendEmail(String to, String Subject, String message) throws MessagingException;
}
