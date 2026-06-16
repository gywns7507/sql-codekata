-- 식품분류별 가장 비싼 식품의 정보 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131116
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 16:42:11

-- 코드를 입력하세요
SELECT
    A.CATEGORY,
    PRICE AS MAX_PRICE,
    PRODUCT_NAME
FROM FOOD_PRODUCT A
JOIN (
SELECT
    CATEGORY,
    MAX(PRICE) AS MAX_PRICE
FROM FOOD_PRODUCT
GROUP BY CATEGORY
) B
ON A.CATEGORY = B.CATEGORY
AND A.PRICE = B.MAX_PRICE
WHERE A.CATEGORY IN ('과자', '국', '김치', '식용유')
ORDER BY MAX_PRICE DESC