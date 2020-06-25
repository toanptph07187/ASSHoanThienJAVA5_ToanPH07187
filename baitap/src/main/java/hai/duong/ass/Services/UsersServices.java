package hai.duong.ass.Services;

import java.util.List;

import hai.duong.ass.Entity.Users;

public interface UsersServices {

	void deleteById(String id);

	List<Users> findAll();

	Users findById(String id);

	Users save(Users entity);

}
