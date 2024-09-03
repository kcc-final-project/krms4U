package com.krms4u.api.common.config;


import org.springframework.boot.autoconfigure.security.servlet.PathRequest;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.annotation.web.configurers.HeadersConfigurer;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

// 이 클래스는 보안 설정을 담당합니다.
@Configuration
@EnableWebSecurity  // 웹 보안을 활성화합니다.
@EnableMethodSecurity(securedEnabled = true, prePostEnabled = true)  // 메소드 수준의 보안을 활성화합니다.
public class SecurityConfig {

    // 누구나 접근할 수 있는 URL 목록입니다.
    private static final String[] WHITE_LIST = {
            "/**",                // 홈 페이지
            "/WEB-INF/views/**", // "/WEB-INF/views/"로 시작하는 모든 페이지
//            "/members/**",       // "/members/"으로 시작하는 모든 페이지
            "/joinForm",        // 회원가입 페이지
            "/join",            // 회원가입 페이지
            "/loginForm",       // 로그인 페이지
            "/products/**",
            "/h2-console/**",   // H2 데이터베이스 콘솔
    };

    // 비밀번호를 암호화하는 방법을 설정합니다.
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();  // 비밀번호를 안전하게 암호화해주는 도구입니다.
    }

    // 보안 필터 체인을 설정합니다.
    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        // CSRF 보호 기능을 비활성화합니다.
        http.csrf(AbstractHttpConfigurer::disable);

        // HTTP 요청에 대해 보안 설정을 합니다.
        http.authorizeHttpRequests(authorize ->
                        authorize.requestMatchers(WHITE_LIST).permitAll() // WHITE_LIST에 있는 URL은 모두에게 열어둡니다.
                                .requestMatchers(PathRequest.toH2Console()).permitAll() // H2 콘솔도 모두에게 열어둡니다.
                                .anyRequest().authenticated() // 그 외의 모든 요청은 인증(로그인)이 필요합니다.
                )
                .csrf(csrf ->csrf.ignoringRequestMatchers(PathRequest.toH2Console())) // H2 콘솔에 대해서는 CSRF 보호를 무시합니다.
                .headers(headers ->headers.frameOptions(HeadersConfigurer.FrameOptionsConfig::sameOrigin)) // H2 콘솔이 제대로 보이도록 설정합니다.

                // 로그인 페이지 설정
                .formLogin(form -> form.loginPage("/loginForm")  // 로그인 폼 페이지의 URL을 지정합니다.
                        .loginProcessingUrl("/login")  // 로그인 폼에서 입력된 데이터를 처리할 URL입니다.
                        .defaultSuccessUrl("/",true)  // 로그인 성공 시 이동할 기본 페이지입니다.
                );

        return http.build(); // 설정을 바탕으로 보안 필터 체인을 만듭니다.
    }
}
