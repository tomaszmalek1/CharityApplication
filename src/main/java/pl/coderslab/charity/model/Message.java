package pl.coderslab.charity.model;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

public class Message {
    @NotBlank
    @Size(min = 2)
    String name;
    @NotBlank
    @Size(min = 2)
    String lastName;
    @Email(message = "Invalid email address format")
    @NotBlank(message = "Enter your e-mail")
    String email;
    @NotBlank
    @Size(min = 2)
    String text;

    public Message(String name, String lastName, String email, String text) {
        this.name = name;
        this.lastName = lastName;
        this.email = email;
        this.text = text;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
}
