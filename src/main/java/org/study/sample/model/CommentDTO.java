package org.study.sample.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class CommentDTO {

	private int c_no;
	private int b_no;
	private String c_writer;
	private String c_content;
	private Timestamp c_regDate;
}
