package pl.bikes.dao;

import org.springframework.stereotype.Repository;
import pl.bikes.model.Address;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Repository
@Transactional
public class AddressDao {
    @PersistenceContext
    EntityManager entityManager;

    public void save(Address address) {
        entityManager.persist(address);
    }
    public Address findById(Long id) {
        return entityManager.find(Address.class, id);
    }
    public void update(Address address) {
        entityManager.merge(address);
    }
    public void delete(Address address) {
        entityManager.remove(entityManager.contains(address) ?
                address : entityManager.merge(address)); }

}

