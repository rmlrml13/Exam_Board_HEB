package org.study.sample.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.study.sample.model.CommentDTO;

@Mapper
public interface CommentMapper {



	void commentInsert(CommentDTO dto);

	List<CommentDTO> commentList(String b_no);

	void commentDelete(String c_no);



}
