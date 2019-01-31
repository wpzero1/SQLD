
--트랜잭션 : 데이터베이스의 논리적 연산단위, 밀접히 관련되어 분리될 수 없는 한 개 이상의 데이터베이스 조작

/*
특징
원자성 : 성공적으로 실행되던지 아니면 전혀 실행되지 않던지 (all or nothing)
일관성 : 데이터베이스 내용은 전 후로 잘못이 있으면 안된다.
고립성 : 다른 트랜잭션의 영향을 받아 잘못된 결과를 만들어선 안됨
지속성 : 성공적으로 수행되면 갱신한 db내용은 영구적으로 저장됨
*/

--트랜잭션 완료

INSERT INTO PLAYER (PLAYER_ID, TEAM_ID, PLAYER_NAME, POSITIONS, HEIGHT, WEIGHT, BACK_NO) VALUES ('1997035', 'K07', '이운재', 'GK', 182, 82, 1);
COMMIT;
--INSERT, UPDATE, DELETE 문장 사용 후 커밋

INSERT INTO PLAYER (PLAYER_ID, TEAM_ID, PLAYER_NAME, POSITIONS, HEIGHT, WEIGHT, BACK_NO) VALUES ('1997035', 'K07', '이운재', 'GK', 182, 82, 1);
COMMIT;

UPDATE PLAYER SET HEIGHT = 200;
ROLLBACK; --다시 되돌리기
SELECT * FROM PLAYER;

--중간 저장점 생성 (롤백할때 트랜잭션의 일부만 롤백 가능)
SAVEPOINT SVPT1;
ROLLBACK TRANSACTION SVTR1;

