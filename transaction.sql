
--Ʈ����� : �����ͺ��̽��� ���� �������, ������ ���õǾ� �и��� �� ���� �� �� �̻��� �����ͺ��̽� ����

/*
Ư¡
���ڼ� : ���������� ����Ǵ��� �ƴϸ� ���� ������� �ʴ��� (all or nothing)
�ϰ��� : �����ͺ��̽� ������ �� �ķ� �߸��� ������ �ȵȴ�.
���� : �ٸ� Ʈ������� ������ �޾� �߸��� ����� ���� �ȵ�
���Ӽ� : ���������� ����Ǹ� ������ db������ ���������� �����
*/

--Ʈ����� �Ϸ�

INSERT INTO PLAYER (PLAYER_ID, TEAM_ID, PLAYER_NAME, POSITIONS, HEIGHT, WEIGHT, BACK_NO) VALUES ('1997035', 'K07', '�̿���', 'GK', 182, 82, 1);
COMMIT;
--INSERT, UPDATE, DELETE ���� ��� �� Ŀ��

INSERT INTO PLAYER (PLAYER_ID, TEAM_ID, PLAYER_NAME, POSITIONS, HEIGHT, WEIGHT, BACK_NO) VALUES ('1997035', 'K07', '�̿���', 'GK', 182, 82, 1);
COMMIT;

UPDATE PLAYER SET HEIGHT = 200;
ROLLBACK; --�ٽ� �ǵ�����
SELECT * FROM PLAYER;

--�߰� ������ ���� (�ѹ��Ҷ� Ʈ������� �Ϻθ� �ѹ� ����)
SAVEPOINT SVPT1;
ROLLBACK TRANSACTION SVTR1;

