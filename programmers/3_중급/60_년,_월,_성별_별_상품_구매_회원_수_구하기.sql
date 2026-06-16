-- 년, 월, 성별 별 상품 구매 회원 수 구하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131532
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 16:45:51

-- 코드를 입력하세요
SELECT
    YEAR(SALES_DATE) AS YEAR,
    MONTH(SALES_DATE) AS MONTH,
    GENDER,
    COUNT(DISTINCT A.USER_ID) AS USERS
FROM ONLINE_SALE A
JOIN USER_INFO B
ON A.USER_ID = B.USER_ID
WHERE GENDER IS NOT NULL
GROUP BY 1,2,3
ORDER BY 1,2,3