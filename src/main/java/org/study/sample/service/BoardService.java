package org.study.sample.service;

import java.util.List;

import org.study.sample.model.BoardDTO;

public interface BoardService {

	List<BoardDTO> boardList();

	void boardInsert(BoardDTO dto);

	BoardDTO boardRead(String b_no);

	void boardUpdate(BoardDTO dto);

	void boardDelete(String b_no);



	
}
