package pl.coderslab.charity.service;

import pl.coderslab.charity.model.Category;
import pl.coderslab.charity.model.Donation;

import java.util.List;
import java.util.Optional;

public interface CategoryService {
    List<Category> getAll();
    Optional<Category> getById(long id);
}
