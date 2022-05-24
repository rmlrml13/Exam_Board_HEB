package org.study.sample.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.study.sample.mapper.GameMapper;

@Service
public class GameServiceImpl implements GameService{

	@Autowired
	private GameMapper mapper;

	@Override
	public void gameSellCount(int sellcount) {
		mapper.gameSellCount(sellcount);
	}
	
}
