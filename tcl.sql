
--DML

--�Ϻ� Į���� �Է�

INSERT INTO PLAYER (PLAYER_ID, PLAYER_NAME, TEAM_ID, POSITIONS, HEIGHT, WEIGHT, BACK_NO)
VALUES('2002007', '������', 'K07', 'MF', 178, 73, 7);

--�������ϱ� ���� ���̺� �ش� �����Ͱ� ����.
--TEAM�� ������ �ְ� ���� �ٽ� INSERT
DESC TEAM;
INSERT INTO TEAM (TEAM_ID, REGION_NAME, TEAM_NAME, STADIUM_ID)
VALUES('K07', '����','����FC','S01');

SELECT * FROM PLAYER;
SELECT * FROM TEAM;

--UPDATE�� ����

UPDATE PLAYER SET BACK_NO = 99;
UPDATE PLAYER SET POSITIONS = 'FW';

SELECT * FROM PLAYER;

--���������
--AS�� �ٿ��� �ǰ� �Ⱥٿ��� �ǰ�.
--�߰��� ���Ⱑ ������ " " �� ����Ѵ�

SELECT PLAYER_NAME �̸�, HEIGHT - WEIGHT "Ű-������" FROM player;

--BMI ������ ���� (ROUND �ݿø� �Լ�)
SELECT PLAYER_NAME AS �̸�, ROUND(WEIGHT/((HEIGHT/100)*(HEIGHT/100)),2) "BMI ������" FROM PLAYER;

--�ռ�(CONCATENATION) ������

SELECT PLAYER_NAME ||'����,'|| HEIGHT || 'cm,' || WEIGHT || 'kg' ü������ FROM PLAYER;



