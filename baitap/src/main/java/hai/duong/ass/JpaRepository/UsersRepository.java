package hai.duong.ass.JpaRepository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import hai.duong.ass.Entity.Users;

@Repository
public interface UsersRepository extends CrudRepository<Users, String>{
	
	

}
