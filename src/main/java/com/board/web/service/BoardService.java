package com.board.web.service;

import java.util.List;
import java.util.Map;

import com.board.web.domain.ArticleBean;

public interface BoardService {
	public void writeArticle(ArticleBean article);
	public int numberOfArticles();
	public ArticleBean findArticle(ArticleBean article);
	public List<ArticleBean> findArticles(Map<String, Object>map);
	public void update(ArticleBean article);
	public void delete (ArticleBean article);

}
