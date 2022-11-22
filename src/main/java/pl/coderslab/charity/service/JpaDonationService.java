package pl.coderslab.charity.service;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import pl.coderslab.charity.model.Donation;
import pl.coderslab.charity.repository.DonationRepository;

import java.util.List;
import java.util.Optional;
@Service
@Primary
public class JpaDonationService implements DonationService {

    private final DonationRepository donationRepository;

    public JpaDonationService(DonationRepository donationRepository) {
        this.donationRepository = donationRepository;
    }

    @Override
    public void save(Donation donation) {
        donationRepository.save(donation);
    }

    @Override
    public void delete(long id) {
        donationRepository.deleteById(id);
    }

    @Override
    public List<Donation> getAll() {
        return donationRepository.findAll();
    }

    @Override
    public Optional<Donation> getById(long id) {
        return donationRepository.findById(id);
    }

//    public List<Donation> getDonationListByUserId(int userId){
//        donationRepository.getById(userId)}
}
