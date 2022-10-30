package pl.coderslab.charity.service;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import pl.coderslab.charity.model.Donation;
import pl.coderslab.charity.model.Institution;
import pl.coderslab.charity.repository.InstitutionRepository;

import java.util.List;

@Service
@Primary
public class JpaInstitutionService implements InstitutionService {
    private final InstitutionRepository institutionRepository;

    public JpaInstitutionService(InstitutionRepository institutionRepository) {
        this.institutionRepository = institutionRepository;
    }

    @Override
    public List<Institution> getAll() {
        return institutionRepository.findAll();
    }
}
