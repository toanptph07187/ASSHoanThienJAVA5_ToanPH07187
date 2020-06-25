package hai.duong.ass.JpaRepository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import hai.duong.ass.Entity.Records;

@Repository
public interface RecordsRepository extends CrudRepository<Records, Integer>{
	
	
	

}
