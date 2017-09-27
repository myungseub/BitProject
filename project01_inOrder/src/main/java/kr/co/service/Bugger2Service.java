package kr.co.service;

import java.util.List;

import kr.co.domain.Bugger2VO;
import kr.co.domain.Criteria;
import kr.co.domain.SearchCriteria;

public interface Bugger2Service {

  public void regist(Bugger2VO bugger2VO) throws Exception;

  public Bugger2VO read(Integer bugger2No) throws Exception;

  public void modify(Bugger2VO bugger2VO) throws Exception;

  public void remove(Integer bugger2No) throws Exception;

//  public List<Bugger2VO> listAll() throws Exception;

  public List<Bugger2VO> listCriteria(Criteria cri) throws Exception;

  public int listCountCriteria(Criteria cri) throws Exception;

  public List<Bugger2VO> listSearchCriteria(SearchCriteria cri) 
      throws Exception;

  public int listSearchCount(SearchCriteria cri) throws Exception;
  
  
//  public List<String> getAttach(Integer bugger2No)throws Exception;
  

}
