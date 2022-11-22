package pl.coderslab.charity.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.Future;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;
@Entity
@Table(name = "donations")
public class Donation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @NotNull(message = "Nie podano ilości worków")
    private int quantity;
    @ManyToMany
    @NotEmpty(message = "Nie wybrano kategorii")
    private List<Category> categoryList;
    @ManyToOne
    @NotNull(message = "Nie wybrano organizacji!")
    private Institution institution;
    @NotBlank(message = "Nie podano nazwy ulicy")
    private String street;
    @NotBlank(message = "Nie podano nazwy miasta")
    private String city;
    @NotBlank(message = "Nie podano kodu pocztowego")
    private String zipCode;
    @NotBlank(message = "Nie podano numeru telefonu")
    private String phoneNumber;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @NotNull(message = "Nie podano daty odbioru")
    @Future
    private LocalDate pickUpDate;
    @NotNull(message = "Nie podano godziny odbioru")
    private LocalTime pickUpTime;
    private String pickUpComment;
    @ManyToOne
    private User user;
    public Donation(long id, int quantity, List<Category> categoryList, Institution institution, String street, String city, String zipCode, String phoneNumber, LocalDate pickUpDate, LocalTime pickUpTime, String pickUpComment, User user) {
        this.id = id;
        this.quantity = quantity;
        this.categoryList = categoryList;
        this.institution = institution;
        this.street = street;
        this.city = city;
        this.zipCode = zipCode;
        this.phoneNumber = phoneNumber;
        this.pickUpDate = pickUpDate;
        this.pickUpTime = pickUpTime;
        this.pickUpComment = pickUpComment;
        this.user = user;
    }

    public Donation() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public List<Category> getCategoryList() {
        return categoryList;
    }

    public void setCategoryList(List<Category> categoryList) {
        this.categoryList = categoryList;
    }

    public Institution getInstitution() {
        return institution;
    }

    public void setInstitution(Institution institution) {
        this.institution = institution;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public LocalDate getPickUpDate() {
        return pickUpDate;
    }

    public void setPickUpDate(LocalDate pickUpDate) {
        this.pickUpDate = pickUpDate;
    }

    public LocalTime getPickUpTime() {
        return pickUpTime;
    }

    public void setPickUpTime(LocalTime pickUpTime) {
        this.pickUpTime = pickUpTime;
    }

    public String getPickUpComment() {
        return pickUpComment;
    }

    public void setPickUpComment(String pickUpComment) {
        this.pickUpComment = pickUpComment;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
