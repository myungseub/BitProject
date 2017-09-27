package kr.co.service;

import java.util.List;

import kr.co.domain.Bugger1VO;
import kr.co.domain.Criteria;
import kr.co.domain.SearchCriteria;

public interface Bugger1Service {

  public void regist(Bugger1VO bugger1VO) throws Exception;

  public Bugger1VO read(Integer bugger1No) throws Exception;
  
  public void modifyTab(int bugger1No) throws Exception;

  public void modify(Bugger1VO bugger1VO) throws Exception;

  public void remove(Integer bugger1No) throws Exception;


  public List<Bugger1VO> listCriteria(Criteria cri) throws Exception;

  public int listCountCriteria(Criteria cri) throws Exception;

  public List<Bugger1VO> listSearchCriteria(SearchCriteria cri) 
      throws Exception;

  public int listSearchCount(SearchCriteria cri) throws Exception;
  

  

}
