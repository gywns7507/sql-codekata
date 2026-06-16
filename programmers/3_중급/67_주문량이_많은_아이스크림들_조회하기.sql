-- 주문량이 많은 아이스크림들 조회하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133027
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 16:46:56

-- 코드를 입력하세요
SELECT A.FLAVOR
FROM FIRST_HALF A
JOIN JULY B
ON A.FLAVOR = B.FLAVOR
GROUP BY A.FLAVOR
ORDER BY SUM(A.TOTAL_ORDER) + SUM(B.TOTAL_ORDER) DESC
LIMIT 3