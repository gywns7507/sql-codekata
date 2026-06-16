-- 조건에 맞는 도서와 저자 리스트 출력하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144854
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 16:24:43

-- 코드를 입력하세요
SELECT A.BOOK_ID, B.AUTHOR_NAME, DATE_FORMAT(DATE(A.PUBLISHED_DATE), '%Y-%m-%d') AS PUBLISHED_DATE
FROM BOOK A
JOIN AUTHOR B
ON A.AUTHOR_ID = B.AUTHOR_ID
WHERE A.CATEGORY = '경제'
ORDER BY A.PUBLISHED_DATE