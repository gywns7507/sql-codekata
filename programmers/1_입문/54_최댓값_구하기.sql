-- 최댓값 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59415
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 16:20:35

-- 코드를 입력하세요
SELECT DATETIME
FROM ANIMAL_INS
WHERE DATETIME = (
SELECT MAX(DATETIME)
FROM ANIMAL_INS)