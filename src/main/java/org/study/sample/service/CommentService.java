package org.study.sample.service;

import java.util.List;

import org.study.sample.model.CommentDTO;

public interface CommentService {



	public void commentInsert(CommentDTO dto);

	public List<CommentDTO> commentList(String b_no);

	public void commentDelete(String c_no);
	
}
