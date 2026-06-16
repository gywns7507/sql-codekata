-- 5월 식품들의 총매출 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131117
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 16:42:35

-- 코드를 입력하세요
SELECT
    A.PRODUCT_ID,
    A.PRODUCT_NAME,
    SUM(B.AMOUNT * A.PRICE) AS TOTAL_SALES
FROM FOOD_PRODUCT A
JOIN FOOD_ORDER B
ON A.PRODUCT_ID = B.PRODUCT_ID
WHERE YEAR(PRODUCE_DATE) = 2022 AND MONTH(PRODUCE_DATE) = 5
GROUP BY PRODUCT_ID
ORDER BY TOTAL_SALES DESC, PRODUCT_ID