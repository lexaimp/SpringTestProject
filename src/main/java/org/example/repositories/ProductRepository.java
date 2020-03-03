package org.example.repositories;

import org.example.model.Product;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ProductRepository extends CrudRepository<Product, Integer> {
    @Query(value = "SELECT p FROM Product p WHERE p.name LIKE '%' || :keyword || '%'")
    List<Product> search(@Param("keyword") String keyword);

}
