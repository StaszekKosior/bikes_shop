package pl.bikes.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import pl.bikes.model.Category;
import java.util.List;



@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {

    List<Category> findAll();


    Category save(Category category);

    Category findFirstById(Long id);


}

