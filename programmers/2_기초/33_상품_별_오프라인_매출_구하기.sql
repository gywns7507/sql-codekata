-- 상품 별 오프라인 매출 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131533
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 16:24:07

-- 코드를 입력하세요
SELECT
    A.PRODUCT_CODE AS PRODUCT_CODE,
    SUM(A.PRICE * B.SALES_AMOUNT) AS SALES
FROM PRODUCT A
JOIN OFFLINE_SALE B
ON A.PRODUCT_ID = B.PRODUCT_ID
GROUP BY A.PRODUCT_ID
ORDER BY SALES DESC, A.PRODUCT_CODE 

# SELECT
#     A.product_code AS PRODUCT_CODE, 
#     SUM(A.PRICE * B.SALES_AMOUNT) AS SALES
# FROM PRODUCT A
# JOIN OFFLINE_SALE B
# ON A.PRODUCT_ID = B.PRODUCT_ID
# group by A.PRODUCT_ID
# order by SALES desc, PRODUCT_CODE asc