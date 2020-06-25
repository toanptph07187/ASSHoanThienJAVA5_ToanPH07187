package hai.duong.ass.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import hai.duong.ass.Entity.Departs;
import hai.duong.ass.JpaRepository.DepartsRepository;

public interface DepartsService {







	void deleteById(String id);

	long count();



	List<Departs> findAll();



	Departs findById(String id);

	

	Departs save(Departs entity);



}
