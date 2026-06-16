-- 우유와 요거트가 담긴 장바구니Summer/Winter Coding(2019)
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/62284
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 16:46:48

-- 코드를 입력하세요
# SELECT 
#     DISTINCT CART_ID
# FROM CART_PRODUCTS
# WHERE CART_ID IN (
# SELECT
#     CART_ID
# FROM CART_PRODUCTS
# WHERE NAME = 'Milk')
# AND CART_ID IN (
# SELECT
#     CART_ID
# FROM CART_PRODUCTS
# WHERE NAME = 'Yogurt')
# ORDER BY CART_ID

WITH A AS (
SELECT CART_ID
FROM CART_PRODUCTS
WHERE NAME = 'Milk'),
B AS (
SELECT CART_ID
FROM CART_PRODUCTS
WHERE NAME = 'Yogurt')
SELECT DISTINCT A.CART_ID
FROM A
JOIN B
ON A.CART_ID = B.CART_ID
ORDER BY A.CART_ID