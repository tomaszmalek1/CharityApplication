package pl.coderslab.charity.service;

import pl.coderslab.charity.model.Donation;

import java.util.List;
import java.util.Optional;

public interface DonationService {
    void save(Donation donation);
    void delete(long id);
    List<Donation> getAll();
    Optional<Donation> getById(long id);
}
