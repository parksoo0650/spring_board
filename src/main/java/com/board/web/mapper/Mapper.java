package com.board.web.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.board.web.domain.ArticleBean;

@Repository
public interface Mapper {
	public void insert(ArticleBean article);
	public int count(ArticleBean article);
	public ArticleBean selectArticle(ArticleBean article);
	public List<ArticleBean> selectSome(Map<String, Object> map);
	public void delete (ArticleBean article);
	public void update(ArticleBean article);

}
