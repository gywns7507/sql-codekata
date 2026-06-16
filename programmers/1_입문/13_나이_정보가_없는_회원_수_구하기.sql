-- 나이 정보가 없는 회원 수 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131528
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 15:37:13

-- 코드를 입력하세요
SELECT COUNT(*)
FROM USER_INFO
WHERE AGE IS NULL