package com.krms4u.api;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Configuration;

import com.krms4u.api.domain.user.mapper.UserMapper;
import com.krms4u.api.domain.user.vo.UserVO;

import lombok.extern.slf4j.Slf4j;

@Configuration
@SpringBootTest(classes = Krms4uApplication.class)
@Slf4j
class Krms4uApplicationTests {

	@Autowired
	private UserMapper userMapper;

	@Test
	void contextLoads() {
		UserVO user = userMapper.findByUsername("kimjungsuk@naver.com");
		log.info("user = {}", user);
		Assertions.assertNotNull(user);
	}

}
