-- 그룹별 조건에 맞는 식당 목록 출력하기
-- 프로그래머스 고급 (⭐⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131124
-- 작성자: 김효준
-- 작성일: 2026. 06. 17. 14:56:58

-- 코드를 입력하세요
SELECT A.MEMBER_NAME, B.REVIEW_TEXT, DATE_FORMAT(DATE(B.REVIEW_DATE), '%Y-%m-%d') AS REVIEW_DATE
FROM MEMBER_PROFILE A
JOIN REST_REVIEW B
ON A.MEMBER_ID = B.MEMBER_ID
WHERE A.MEMBER_ID IN (
    SELECT MEMBER_ID
    FROM REST_REVIEW
    GROUP BY MEMBER_ID
    HAVING COUNT(*) = (
        SELECT MAX(cnt)
        FROM (
            SELECT COUNT(*) AS cnt
            FROM REST_REVIEW
            GROUP BY MEMBER_ID
        ) t
    )
)
ORDER BY REVIEW_DATE ASC, REVIEW_TEXT ASC

# SELECT MEMBER_ID
#     FROM REST_REVIEW
#     GROUP BY MEMBER_ID
#     HAVING COUNT(*) = (
#         SELECT MAX(cnt)
#         FROM (
#             SELECT COUNT(*) AS cnt
#             FROM REST_REVIEW
#             GROUP BY MEMBER_ID
#         ) t
#     )