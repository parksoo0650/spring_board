package com.board.web.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.board.web.domain.ArticleBean;

@Service
public class BoardService {
	public void writeArticle(ArticleBean article){
		
	}
	public int numberOfArticles(){
	  return 0;	
	}
	public ArticleBean findArticle(ArticleBean article){
		return article;
	}
	public List<ArticleBean> findArticles(Map<String, Object>map){
		List<ArticleBean> list = new ArrayList<>();
		return list;
	}
	public void update(ArticleBean article){
		
	}
	public void delete (ArticleBean article){
		
	}

}
