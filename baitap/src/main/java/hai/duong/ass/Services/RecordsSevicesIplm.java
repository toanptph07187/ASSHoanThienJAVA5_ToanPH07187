package hai.duong.ass.Services;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hai.duong.ass.Entity.Records;
import hai.duong.ass.JpaRepository.RecordsRepository;

@Service
public class RecordsSevicesIplm implements RecordsSevices{
@Autowired
RecordsRepository recordsRepository;

@Override
public Records save(Records entity) {
	return recordsRepository.save(entity);
}

@Override
public Records findById(Integer id) {
	return  recordsRepository.findById(id).get();
}

@Override
public List<Records> findAll() {
	return (List<Records>) recordsRepository.findAll();
}

@Override
public long count() {
	return recordsRepository.count();
}

@Override
public void deleteById(Integer id) {
	recordsRepository.deleteById(id);
}

}
