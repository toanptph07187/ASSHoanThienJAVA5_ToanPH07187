package hai.duong.ass.Services;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;

import hai.duong.ass.Entity.Staffs;

import hai.duong.ass.JpaRepository.StaffsRepository;

@Service
public class StaffsSevicesIplm  implements StaffsSevices{
@Autowired
StaffsRepository staffsRepository;


@Override
public Staffs save(Staffs entity) {
	return staffsRepository.save(entity);
}

@Override
public Staffs findById(String id) {
	return staffsRepository.findById(id).get();
}

@Override
public List<Staffs> findAll() {
	return (List<Staffs>) staffsRepository.findAll();
}

@Override
public long count() {
	return staffsRepository.count();
}

@Override
public void deleteById(String id) {
	staffsRepository.deleteById(id);
}






}
