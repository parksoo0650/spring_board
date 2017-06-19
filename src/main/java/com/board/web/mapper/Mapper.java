package com.board.web.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.board.web.domain.Article;

@Repository
public interface Mapper {
	public void insert(Article article);
	public int count(Article article);
	public Article selectArticle(Article article);
	public List<Article> selectSome(Map<String, Object> map);
	public List<Article> selectList(Map<String, Object> map);
	public void delete (Article article);
	public void update(Article article);

}
