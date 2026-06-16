-- 카테고리 별 상품 개수 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131529
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 16:21:17

-- 코드를 입력하세요
SELECT SUBSTR(PRODUCT_CODE, 1, 2) AS CATEGORY, COUNT(*)
FROM PRODUCT
GROUP BY CATEGORY