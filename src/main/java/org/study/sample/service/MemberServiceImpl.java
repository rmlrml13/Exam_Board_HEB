package org.study.sample.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.study.sample.mapper.MemberMapper;
import org.study.sample.model.MemberDTO;


@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberMapper mapper;
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	
	@Override
	public void memberInsert(MemberDTO dto) {
		dto.setM_pw(pwEncoder.encode(dto.getM_pw()));
		mapper.memberInsert(dto);
	}

	@Override
	public List<MemberDTO> memberList() {
		return mapper.memberList();
	}

	@Override
	public void memberDelete(String m_no) {
		mapper.memberDelete(m_no);
	}

	@Override
	public MemberDTO memberRead(String m_no) {
		return mapper.memberRead(m_no);
	}

	@Override
	public void memberUpdate(MemberDTO dto) {
		mapper.memberUpdate(dto);
	}

	@Override
	public boolean login(MemberDTO dto) {
		String resultPw = mapper.getRealPassword(dto.getM_id());
		System.out.println(resultPw);
		boolean loginFilter = pwEncoder.matches(dto.getM_pw(), resultPw);
		System.out.println(loginFilter);
		return loginFilter;
	}


	

}
