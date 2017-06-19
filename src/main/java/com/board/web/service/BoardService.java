package com.board.web.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.board.web.domain.Article;
import com.board.web.mapper.Mapper;

@Service
public class BoardService {
	@Autowired Mapper mapper;
	public void writeArticle(Article article){
		
	}
	public int numberOfArticles(){
	  return 0;	
	}
	public Article findArticle(Article article){
		return article;
	}
	public List<Article> findArticles(Map<String, Object>map){
		List<Article> list = new ArrayList<>();
		return list;
	}
	@SuppressWarnings("unchecked")
	public List<Article> allArticles(Map<String, Object>map){
		List<Article> list = new ArrayList<>();
		IGetService service = (paramMap) -> mapper.selectList(map);
		return (List<Article>) service.excute(map);
	}
	public void update(Article article){
		
	}
	public void delete (Article article){
		
	}

}
