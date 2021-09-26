DROP TABLE tb_cadastro;
DROP SEQUENCE CADASTRO_SEQ;

DELETE FROM TB_CADASTRO;
SELECT * FROM TB_CADASTRO;

CREATE TABLE tb_cadastro (
    id               NUMBER(10) NOT NULL PRIMARY KEY,
    nome             VARCHAR2(256) NOT NULL,
    senha            VARCHAR2(256) NOT NULL,
    email            VARCHAR2(256) NOT NULL,
    cpf              VARCHAR2(256) NOT NULL
);

CREATE SEQUENCE cadastro_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER tr_insert_id_cadastro
                  BEFORE INSERT ON tb_cadastro FOR EACH ROW       
BEGIN
 
SELECT cadastro_seq.NEXTVAL
INTO :NEW.id
FROM DUAL;
END;
/

INSERT INTO TB_CADASTRO (NOME, SENHA, EMAIL, CPF) VALUES ('Nome 1', 'senha1', 'email1@email', '11111111111');
INSERT INTO TB_CADASTRO (NOME, SENHA, EMAIL, CPF) VALUES ('Nome 2', 'senha2', 'email2@email', '22222222222');
INSERT INTO TB_CADASTRO (NOME, SENHA, EMAIL, CPF) VALUES ('Nome 3', 'senha3', 'email3@email', '33333333333');
INSERT INTO TB_CADASTRO (NOME, SENHA, EMAIL, CPF) VALUES ('Nome 4', 'senha4', 'email4@email', '44444444444');

commit;