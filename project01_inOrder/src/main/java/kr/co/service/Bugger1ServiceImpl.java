package kr.co.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import kr.co.domain.Bugger1VO;
import kr.co.domain.Criteria;
import kr.co.domain.SearchCriteria;
import kr.co.persistence.Bugger1DAO;

@Service
public class Bugger1ServiceImpl implements Bugger1Service {

  @Inject
  private Bugger1DAO dao1;

  
  @Transactional
  @Override
  public void regist(Bugger1VO bugger1) throws Exception {
  
    dao1.create(bugger1);
    
    String[] files1 = bugger1.getFiles1();
    
    if(files1 == null) { return; } 
    
//    for (String fileName : files1) {
//      dao1.addAttach(fileName);
//    }   
  }
  
  //
//  @Override
//  public void regist(Bugger1VO bugger1) throws Exception {
//    dao1.create(bugger1);
//  }

//  @Override
//  public Bugger1VO read(Integer bugger1No) throws Exception {
//    return dao1.read(bugger1No);
//  }


  @Transactional(isolation=Isolation.READ_COMMITTED)
  @Override
  public Bugger1VO read(Integer bugger1No) throws Exception {
//    dao1.updateViewCnt(bugger1No);
    return dao1.read(bugger1No);
  }

  
//  @Override
//  public void modify(Bugger1VO bugger1) throws Exception {
//    dao1.update(bugger1);
//  }
  
  @Transactional
  @Override
  public void modifyTab(int bugger1No) throws Exception {
	  
	  
//	  String[] files1 = bugger1VO.getFiles1();
	  
	  dao1.updateTab(bugger1No); return;
	  
  }
  
  @Transactional
  @Override
  public void modify(Bugger1VO bugger1VO) throws Exception {
	


    
    Integer bugger1No = bugger1VO.getBugger1No();
    
    
    String[] files1 = bugger1VO.getFiles1();
    
//    if(files1 != null) {  dao1.deleteAttach(bugger1VO.getBugger1No());   }
    dao1.update(bugger1VO); return;
    
//    for (String fileName : files1) {
//      dao1.replaceAttach(fileName, bugger1No);
//    }
  }
  

//  @Override
//  public void remove(Integer bugger1No) throws Exception {
//    dao1.delete(bugger1No);
//  }
  
  
  @Transactional
  @Override
  public void remove(Integer bugger1No) throws Exception {
//    dao1.deleteAttach(bugger1No);
    dao1.delete(bugger1No);
  } 

//  @Override
//  public List<Bugger1VO> listAll() throws Exception {
//    return dao1.listAll();
//  }

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
  

//  @Override
//  public List<String> getAttach(Integer bugger1No) throws Exception {
//    
//    return dao1.getAttach(bugger1No);
//  }   

}
