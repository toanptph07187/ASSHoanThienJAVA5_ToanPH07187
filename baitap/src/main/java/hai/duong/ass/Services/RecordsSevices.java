package hai.duong.ass.Services;

import java.util.List;

import hai.duong.ass.Entity.Records;

public interface RecordsSevices {

	void deleteById(Integer id);

	long count();

	List<Records> findAll();

	Records findById(Integer id);

	Records save(Records entity);

}
