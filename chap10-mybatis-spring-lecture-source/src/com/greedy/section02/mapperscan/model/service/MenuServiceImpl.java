package com.greedy.section02.mapperscan.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greedy.section02.mapperscan.model.dao.MenuDAO;
import com.greedy.section02.mapperscan.model.dto.MenuDTO;

@Service("menuService")
public class MenuServiceImpl implements MenuService{

	private final SqlSessionTemplate sqlSession;
	
	@Autowired
	public MenuServiceImpl(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<MenuDTO> selectMenuList() {
		
		return sqlSession.getMapper(MenuDAO.class).selectMenuList();
	}

}
