package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import kr.co.domain.Bugger1VO;
import kr.co.domain.Criteria;
import kr.co.domain.SearchCriteria;
import kr.co.persistence.Bugger1DAO;

@Service
public class Bugger1ServiceImpl implements Bugger1Service {

  @Inject
  private Bugger1DAO dao1;

  
  @Override
  public void regist(Bugger1VO bugger1) throws Exception {
  
    dao1.create(bugger1);
    
    
  }
  


  @Override
  public Bugger1VO read(Integer bugger1No) throws Exception {
    return dao1.read(bugger1No);
  }

  
  
  @Override
  public void modifyTab(int bugger1No) throws Exception {
	  
	  
	  
	  dao1.updateTab(bugger1No); return;
	  
  }
  
  @Override
  public void modify(Bugger1VO bugger1VO) throws Exception {
	
    dao1.update(bugger1VO);
    
  }
  

  @Override
  public void remove(Integer bugger1No) throws Exception {
    dao1.delete(bugger1No);
  }
  
  


  @Override
  public List<Bugger1VO> listCriteria(Criteria cri) throws Exception {

    return dao1.listCriteria(cri);
  }

  @Override
  public int listCountCriteria(Criteria cri) throws Exception {

    return dao1.countPaging(cri);
  }

  @Override
  public List<Bugger1VO> listSearchCriteria(SearchCriteria cri) throws Exception {

    return dao1.listSearch(cri);
  }

  @Override
  public int listSearchCount(SearchCriteria cri) throws Exception {

    return dao1.listSearchCount(cri);
  }
  


}
