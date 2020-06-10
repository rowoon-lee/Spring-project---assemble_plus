package kr.co.assemble.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.assemble.dto.RecommentDTO;

@Repository
public class RecommentDAOImple implements RecommentDAO{

   @Autowired
   SqlSession ss;
   
   
   public void setSs(SqlSession ss) {
      this.ss = ss;
   }

   //댓글 입력
   @Override
   public void insertComment(RecommentDTO dto) {
      ss.selectList("insertComment", dto);
      
   }
   
}