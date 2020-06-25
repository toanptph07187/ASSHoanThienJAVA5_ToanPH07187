package hai.duong.ass.JpaRepository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import hai.duong.ass.Entity.Staffs;

@Repository
public interface StaffsRepository extends CrudRepository<Staffs, String> {

}
