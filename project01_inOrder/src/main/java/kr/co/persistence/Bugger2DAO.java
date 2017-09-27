package kr.co.persistence;

import java.util.List;

import kr.co.domain.Bugger2VO;
import kr.co.domain.Criteria;
import kr.co.domain.SearchCriteria;

public interface Bugger2DAO {

  public void create(Bugger2VO bugger2VO) throws Exception;

  public Bugger2VO read(Integer bugger2No) throws Exception;

  public void update(Bugger2VO bugger2VO) throws Exception;

  public void delete(Integer bugger2No) throws Exception;


  public List<Bugger2VO> listCriteria(Criteria cri) throws Exception;

  public int countPaging(Criteria cri) throws Exception;
  
  //use for dynamic sql
  
  public List<Bugger2VO> listSearch(SearchCriteria cri)throws Exception;
  
  public int listSearchCount(SearchCriteria cri)throws Exception;
  
  
//  public void addAttach(String fullName2)throws Exception;
//  
//  public List<String> getAttach(Integer bugger2No)throws Exception;  
//   
//  public void deleteAttach(Integer bugger2No)throws Exception;
//  
//  public void replaceAttach(String fullName2, Integer bugger2No)throws Exception;

  
}
