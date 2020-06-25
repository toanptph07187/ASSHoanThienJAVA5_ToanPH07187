package hai.duong.ass.JpaRepository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import hai.duong.ass.Entity.Departs;
@Repository
public interface DepartsRepository extends CrudRepository<Departs, String>{

}
