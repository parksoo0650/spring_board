package com.board.web.service;

import java.util.Map;

import org.springframework.stereotype.Service;

@Service
@FunctionalInterface
public interface IGetService {
	public Object excute(Map<?, ?> map);
}
