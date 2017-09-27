package kr.co.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import kr.co.domain.Bugger2VO;
import kr.co.domain.Criteria;
import kr.co.domain.SearchCriteria;

@Repository
public class Bugger2DAOImpl implements Bugger2DAO {

  @Inject
  private SqlSession session;

  private static String namespace = "kr.co.mapper.BoardMapper";

  @Override
  public void create(Bugger2VO bugger2VO) throws Exception {
    session.insert(namespace + ".create2", bugger2VO);
  }

  @Override
  public Bugger2VO read(Integer bugger2No) throws Exception {
    return session.selectOne(namespace + ".read2", bugger2No);
  }

  @Override
  public void update(Bugger2VO bugger2VO) throws Exception {
    session.update(namespace + ".update2", bugger2VO);
  }

  @Override
  public void delete(Integer bugger2No) throws Exception {
    session.delete(namespace + ".delete2", bugger2No);
  }



  @Override
  public List<Bugger2VO> listCriteria(Criteria cri) throws Exception {

    return session.selectList(namespace + ".listCriteria2", cri);
  }

  @Override
  public int countPaging(Criteria cri) throws Exception {

    return session.selectOne(namespace + ".countPaging2", cri);
  }

  @Override
  public List<Bugger2VO> listSearch(SearchCriteria cri) throws Exception {

    return session.selectList(namespace + ".listSearch2", cri);
  }

  @Override
  public int listSearchCount(SearchCriteria cri) throws Exception {

    return session.selectOne(namespace + ".listSearchCount2", cri);
  }


  
    
  
//  @Override
//  public void updateReplyCnt(Integer bugger2No, int amount) throws Exception {
//
//    Map<String, Object> paramMap = new HashMap<String, Object>();
//
//    paramMap.put("bugger2No", bugger2No);
//    paramMap.put("amount", amount);
//
//    session.update(namespace + ".updateReplyCnt", paramMap);
//  }
//
//  @Override
//  public void updateViewCnt(Integer bugger2No) throws Exception {
//    
//    session.update(namespace+".updateViewCnt", bugger2No);
//    
//  }
//
//
  
  
//  @Override
//  public void addAttach(String fullName2) throws Exception {
//    
//    session.insert(namespace+".addAttach2", fullName2);
//    
//  }
//  
//  @Override
//  public List<String> getAttach(Integer bugger2No) throws Exception {
//    
//    return session.selectList(namespace +".getAttach2", bugger2No);
//  }
// 
//
//  @Override
//  public void deleteAttach(Integer bugger2No) throws Exception {
//
//    session.delete(namespace+".deleteAttach2", bugger2No);
//    
//  }
//
//  @Override
//  public void replaceAttach(String fullName2, Integer bugger2No) throws Exception {
//    
//    Map<String, Object> paramMap = new HashMap<String, Object>();
//    
//    paramMap.put("bugger2No", bugger2No);
//    paramMap.put("fullName2", fullName2);
//    
//    session.insert(namespace+".replaceAttach2", paramMap);
//    
//  }


}
