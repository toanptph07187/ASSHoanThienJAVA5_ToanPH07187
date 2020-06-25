package hai.duong.ass.Services;

import java.util.List;

import hai.duong.ass.Entity.Staffs;

public interface StaffsSevices {

	void deleteById(String id);

	long count();

	List<Staffs> findAll();

	Staffs findById(String id);

	Staffs save(Staffs entity);


}
