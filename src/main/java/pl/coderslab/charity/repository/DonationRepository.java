package pl.coderslab.charity.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.charity.model.Donation;

import java.util.List;

public interface DonationRepository extends JpaRepository<Donation, Long> {
    @Query("select d from Donation d where d.user.id = ?1")
    List<Donation> getDonationsByUserId(Long userId);
}
