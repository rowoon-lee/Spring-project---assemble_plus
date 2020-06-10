package kr.co.assemble.dao;

import kr.co.assemble.dto.RecommentDTO;

public interface RecommentDAO {

   //댓글 작성
   public void insertComment(RecommentDTO dto);
   
   
}