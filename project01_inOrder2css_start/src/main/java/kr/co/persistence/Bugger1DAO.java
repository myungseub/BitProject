package kr.co.persistence;

import java.util.List;

import kr.co.domain.Bugger1VO;
import kr.co.domain.Criteria;
import kr.co.domain.SearchCriteria;

public interface Bugger1DAO {

  public void create(Bugger1VO bugger1VO) throws Exception;

  public Bugger1VO read(Integer bugger1No) throws Exception;

  public void updateTab(int bugger1No) throws Exception;
  
  public void update(Bugger1VO bugger1VO) throws Exception;

  public void delete(Integer bugger1No) throws Exception;


  public List<Bugger1VO> listCriteria(Criteria cri) throws Exception;

  public int countPaging(Criteria cri) throws Exception;
  
  //use for dynamic sql
  
  public List<Bugger1VO> listSearch(SearchCriteria cri)throws Exception;
  
  public int listSearchCount(SearchCriteria cri)throws Exception;
  


}
