package hu.balogh.patakparlat_BE.repository;

import hu.balogh.patakparlat_BE.repository.entity.NewsEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NewsRepository extends JpaRepository<NewsEntity, Integer> {
}
