package org.study.sample.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.study.sample.model.BoardDTO;

@Mapper
public interface BoardMapper {

	List<BoardDTO> boardList();

	void boardInsert(BoardDTO dto);

	BoardDTO boardRead(String b_no);

	void boardUpdate(BoardDTO dto);

	void boardDelete(String b_no);

}
