-- 조건에 맞는 회원수 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131535
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 16:06:58

-- 코드를 입력하세요
SELECT COUNT(*)
FROM USER_INFO
WHERE YEAR(joined) = 2021 AND (AGE >= 20 AND AGE <= 29)