package kr.co.persistence;

import java.util.List;

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


  
    


}
