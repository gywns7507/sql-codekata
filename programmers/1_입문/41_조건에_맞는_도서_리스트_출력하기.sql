-- 조건에 맞는 도서 리스트 출력하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144853
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 16:17:38

-- 코드를 입력하세요
SELECT 
    book_id,
    DATE_FORMAT(DATE(published_date), '%Y-%m-%d')
FROM BOOK
WHERE YEAR(published_date) = 2021
AND category = '인문'
ORDER BY published_date