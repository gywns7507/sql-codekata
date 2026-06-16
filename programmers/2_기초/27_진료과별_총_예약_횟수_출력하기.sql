-- 진료과별 총 예약 횟수 출력하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132202
-- 작성자: 김효준
-- 작성일: 2026. 06. 16. 16:21:51

-- 코드를 입력하세요
SELECT
    MCDP_CD AS '진료과코드',
    COUNT(*) AS '5월예약건수'
FROM APPOINTMENT
WHERE MONTH(APNT_YMD) = 5
GROUP BY MCDP_CD
ORDER BY 5월예약건수, 진료과코드

# SELECT MCDP_CD AS '진료과코드', COUNT(PT_NO) AS '5월예약건수'
# FROM APPOINTMENT
# WHERE MONTH(APNT_YMD) = '05'
# GROUP BY MCDP_CD
# ORDER BY 5월예약건수, 진료과코드