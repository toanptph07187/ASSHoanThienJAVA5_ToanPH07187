package hai.duong.ass.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hai.duong.ass.Entity.Users;
import hai.duong.ass.JpaRepository.UsersRepository;
@Service
public class UsersServicesIplm implements UsersServices {
	@Autowired
	UsersRepository repository;

	@Override
	public Users save(Users entity) {
		return repository.save(entity);
	}

	@Override
	public Users findById(String id) {
		return (Users) repository.findById(id).get();
	}

	@Override
	public List<Users> findAll() {
		return (List<Users>) repository.findAll();
	}

	@Override
	public void deleteById(String id) {
		repository.deleteById(id);
	}
	
	

}
