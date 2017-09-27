package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import kr.co.domain.Bugger2VO;
import kr.co.domain.Criteria;
import kr.co.domain.SearchCriteria;
import kr.co.persistence.Bugger2DAO;

@Service
public class Bugger2ServiceImpl implements Bugger2Service {

  @Inject
  private Bugger2DAO dao2;

  
  @Transactional
  @Override
  public void regist(Bugger2VO bugger2VO) throws Exception {
  
    dao2.create(bugger2VO);
    
    String[] files2 = bugger2VO.getFiles2();
    
    if(files2 == null) { return; } 
    
//    for (String fileName : files2) {
//      dao2.addAttach(fileName);
//    }   
  }
  
  //
//  @Override
//  public void regist(Bugger2VO bugger2) throws Exception {
//    dao2.create(bugger2);
//  }

//  @Override
//  public Bugger2VO read(Integer bugger2No) throws Exception {
//    return dao2.read(bugger2No);
//  }


  @Transactional(isolation=Isolation.READ_COMMITTED)
  @Override
  public Bugger2VO read(Integer bugger2No) throws Exception {
//    dao2.updateViewCnt(bugger2No);
    return dao2.read(bugger2No);
  }

  
//  @Override
//  public void modify(Bugger2VO bugger2) throws Exception {
//    dao2.update(bugger2);
//  }
  
  @Transactional
  @Override
  public void modify(Bugger2VO bugger2VO) throws Exception {
    dao2.update(bugger2VO);
    
    Integer bugger2No = bugger2VO.getBugger2No();
    
//    dao2.deleteAttach(bugger2No);
    
    String[] files = bugger2VO.getFiles2();
//    
    if(files == null) { return; } 
    
//    for (String fileName : files) {
//      dao2.replaceAttach(fileName, bugger2No);
//    }
  }
  

//  @Override
//  public void remove(Integer bugger2No) throws Exception {
//    dao2.delete(bugger2No);
//  }
  
  
  @Transactional
  @Override
  public void remove(Integer bugger2No) throws Exception {
//    dao2.deleteAttach(bugger2No);
    dao2.delete(bugger2No);
  } 

//  @Override
//  public List<Bugger2VO> listAll() throws Exception {
//    return dao2.listAll();
//  }

  @Override
  public List<Bugger2VO> listCriteria(Criteria cri) throws Exception {

    return dao2.listCriteria(cri);
  }

  @Override
  public int listCountCriteria(Criteria cri) throws Exception {

    return dao2.countPaging(cri);
  }

  @Override
  public List<Bugger2VO> listSearchCriteria(SearchCriteria cri) throws Exception {

    return dao2.listSearch(cri);
  }

  @Override
  public int listSearchCount(SearchCriteria cri) throws Exception {

    return dao2.listSearchCount(cri);
  }
  

//  @Override
//  public List<String> getAttach(Integer bugger2No) throws Exception {
//    
//    return dao2.getAttach(bugger2No);
//  }   

}
