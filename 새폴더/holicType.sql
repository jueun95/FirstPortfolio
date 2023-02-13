DROP TABLE payment;

CREATE TABLE payment(
	id VARCHAR2(30) NOT NULL,
	cardNum VARCHAR2(15) NOT NULL,
	cvc VARCHAR2(5) NOT NULL,
	CONSTRAINT fk_id FOREIGN KEY(id) REFERENCES member(id)
);

insert into payment values('holic', '1234-5678-91011', 123);

commit;

CREATE TABLE read (
	id VARCHAR2(30) NOT NULL,
	CONSTRAINT fk_id_read FOREIGN KEY(id) REFERENCES member(id)
);

insert into read values('holic');

select * from read;

commit;

CREATE TABLE notice (
	adminId VARCHAR2(30) NOT NULL PRIMARY KEY,
	id  VARCHAR2(30) NOT NULL,
	CONSTRAINT fk_id_notice FOREIGN KEY(id) REFERENCES member(id)	
);

insert into notice values('holictype', 'holic');

commit;

CREATE TABLE review(	
	id VARCHAR2(30) NOT NULL,
	reg_date date default SYSDATE,
	pno NUMBER NOT NULL,
	CONSTRAINT fk_id_review FOREIGN KEY(id) REFERENCES member(id)	
);

CREATE SEQUENCE pno_SEQ 
INCREMENT BY 1
START WITH 1
MINVALUE 1
NOCYCLE
NOCACHE;

drop table review;

insert into review values('holic', sysdate, pno_seq.nextval);

select * from review;

commit;