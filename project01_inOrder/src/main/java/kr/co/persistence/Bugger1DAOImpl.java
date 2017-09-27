package kr.co.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import kr.co.domain.Bugger1VO;
import kr.co.domain.Criteria;
import kr.co.domain.SearchCriteria;

@Repository
public class Bugger1DAOImpl implements Bugger1DAO {

  @Inject
  private SqlSession session;

  private static String namespace = "kr.co.mapper.BoardMapper";

  @Override
  public void create(Bugger1VO bugger1VO) throws Exception {
    session.insert(namespace + ".create1", bugger1VO);
  }

  @Override
  public Bugger1VO read(Integer bugger1No) throws Exception {
    return session.selectOne(namespace + ".read1", bugger1No);
  }

  @Override
  public void updateTab(int bugger1No) throws Exception{
	  session.update(namespace + ".update1tab", bugger1No);
  }
  
  @Override
  public void update(Bugger1VO bugger1VO) throws Exception {
    session.update(namespace + ".update1", bugger1VO);
  }

  @Override
  public void delete(Integer bugger1No) throws Exception {
    session.delete(namespace + ".delete1", bugger1No);
  }



  @Override
  public List<Bugger1VO> listCriteria(Criteria cri) throws Exception {

    return session.selectList(namespace + ".listCriteria1", cri);
  }

  @Override
  public int countPaging(Criteria cri) throws Exception {

    return session.selectOne(namespace + ".countPaging1", cri);
  }

  @Override
  public List<Bugger1VO> listSearch(SearchCriteria cri) throws Exception {

    return session.selectList(namespace + ".listSearch1", cri);
  }

  @Override
  public int listSearchCount(SearchCriteria cri) throws Exception {

    return session.selectOne(namespace + ".listSearchCount1", cri);
  }


  
    
  
//  @Override
//  public void updateReplyCnt(Integer bugger1No, int amount) throws Exception {
//
//    Map<String, Object> paramMap = new HashMap<String, Object>();
//
//    paramMap.put("bugger1No", bugger1No);
//    paramMap.put("amount", amount);
//
//    session.update(namespace + ".updateReplyCnt", paramMap);
//  }
//
//  @Override
//  public void updateViewCnt(Integer bugger1No) throws Exception {
//    
//    session.update(namespace+".updateViewCnt", bugger1No);
//    
//  }
//
//
  
  
  
  
  
  
//  @Override
//  public void addAttach(String fullName1) throws Exception {
//    
//    session.insert(namespace+".addAttach1", fullName1);
//    
//  }
//  
//  @Override
//  public List<String> getAttach(Integer bugger1No) throws Exception {
//    
//    return session.selectList(namespace +".getAttach1", bugger1No);
//  }
// 
//
//  @Override
//  public void deleteAttach(int bugger1No) throws Exception {
//
//    session.delete(namespace+".deleteAttach1", bugger1No);
//    
//  }

  @Override
  public void replaceAttach(String fullName1, Integer bugger1No) throws Exception {
    
    Map<String, Object> paramMap = new HashMap<String, Object>();
    
    paramMap.put("bugger1No", bugger1No);
    paramMap.put("fullName1", fullName1);
    
    session.insert(namespace+".replaceAttach1", paramMap);
    
  }


}
