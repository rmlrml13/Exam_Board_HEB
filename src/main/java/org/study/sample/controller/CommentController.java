package org.study.sample.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.study.sample.model.CommentDTO;
import org.study.sample.service.CommentService;

@Controller
public class CommentController {

	@Autowired
	private CommentService commentService;
	
	@PostMapping("/commentInsert")
	@ResponseBody
	public String commentInsert(CommentDTO dto) {
		
		commentService.commentInsert(dto);
		System.out.println("끝났니?");
		return "Success";
		
	}
	
	@PostMapping("/commentList")
	@ResponseBody
	public List<CommentDTO> commentList(@RequestParam("b_no")String b_no) {
		
		List<CommentDTO> list = commentService.commentList(b_no);
		System.out.println(list.toString());
		return list;
		
	}
	
	@PostMapping("/commentDelete")
	@ResponseBody
	public String commentDelete(String c_no) {
		
		commentService.commentDelete(c_no);
		System.out.println("끝났니?");
		return "Success";
		
	}
	
	
	
	

}
