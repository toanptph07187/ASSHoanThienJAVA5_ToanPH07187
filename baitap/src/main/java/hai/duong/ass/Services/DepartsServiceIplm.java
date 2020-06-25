package hai.duong.ass.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hai.duong.ass.Entity.Departs;
import hai.duong.ass.JpaRepository.DepartsRepository;

@Service
public class DepartsServiceIplm implements DepartsService {
	@Autowired
	DepartsRepository departsRepository;
	@Override
	public Departs  save(Departs entity) {
		return departsRepository.save(entity);
	}


	@Override
	public List<Departs> findAll() {
		return (List<Departs>) departsRepository.findAll();
	}


	@Override
	public long count() {
		return departsRepository.count();
	}

	@Override
	public void deleteById(String id) {
		departsRepository.deleteById(id);
	}




	@Override
	public Departs findById(String id) {

		return departsRepository.findById(id).get();
	}

	
	
	

}
