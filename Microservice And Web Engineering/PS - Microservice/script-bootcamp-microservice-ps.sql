DROP TABLE tb_bootcamp;
DROP SEQUENCE BOOTCAMP_SEQ;

DELETE FROM TB_BOOTCAMP;
SELECT * FROM TB_BOOTCAMP;

CREATE TABLE tb_bootcamp (
    id_bootcamp                     NUMBER(10) NOT NULL PRIMARY KEY,
    nome_bootcamp                   VARCHAR2(256) NOT NULL,
    empresa_bootcamp                VARCHAR2(256) NOT NULL,
    num_participantes_bootcamp      NUMBER(3) NOT NULL,
    preco_bootcamp                  NUMBER(10, 2) NOT NULL,
    profs_bootcamp                  VARCHAR2(256) NOT NULL,
    local_bootcamp                  VARCHAR2(256) NOT NULL,
    detalhes_bootcamp               VARCHAR2(256) NOT NULL
);

CREATE SEQUENCE bootcamp_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER tr_insert_id_bootcamp
                  BEFORE INSERT ON tb_bootcamp FOR EACH ROW       
BEGIN
 
SELECT bootcamp_seq.NEXTVAL
INTO :NEW.id_bootcamp
FROM DUAL;
END;
/

INSERT INTO TB_BOOTCAMP (nome_bootcamp, empresa_bootcamp, num_participantes_bootcamp, preco_bootcamp, profs_bootcamp, local_bootcamp, detalhes_bootcamp) VALUES ('Nome 1', 'Empresa 1', 10, 10.50, 'Professor 1', 'Local 1', 'Detalhes 1');
INSERT INTO TB_BOOTCAMP (nome_bootcamp, empresa_bootcamp, num_participantes_bootcamp, preco_bootcamp, profs_bootcamp, local_bootcamp, detalhes_bootcamp) VALUES ('Nome 2', 'Empresa 2', 20, 20.50, 'Professor 2', 'Local 2', 'Detalhes 2');
INSERT INTO TB_BOOTCAMP (nome_bootcamp, empresa_bootcamp, num_participantes_bootcamp, preco_bootcamp, profs_bootcamp, local_bootcamp, detalhes_bootcamp) VALUES ('Nome 3', 'Empresa 3', 30, 30.50, 'Professor 3', 'Local 3', 'Detalhes 3');
INSERT INTO TB_BOOTCAMP (nome_bootcamp, empresa_bootcamp, num_participantes_bootcamp, preco_bootcamp, profs_bootcamp, local_bootcamp, detalhes_bootcamp) VALUES ('Nome 4', 'Empresa 4', 40, 40.50, 'Professor 4', 'Local 4', 'Detalhes 4');

commit;