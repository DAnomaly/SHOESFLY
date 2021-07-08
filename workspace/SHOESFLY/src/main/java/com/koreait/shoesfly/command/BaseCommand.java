package com.koreait.shoesfly.command;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

public interface BaseCommand {

	public Map<String, Object> execute(SqlSession sqlSession, Model model);
	
}
