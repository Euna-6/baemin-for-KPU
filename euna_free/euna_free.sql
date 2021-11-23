CREATE TABLE Membership (
	id VARCHAR(20) NOT NULL,
	passwd VARCHAR(25) NOT NULL,
	nickname VARCHAR(20) NOT NULL,
	mobile CHAR(13) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE Review (
	foodType VARCHAR(10) NOT NULL,
	nickname VARCHAR(20) NOT NULL,
	content VARCHAR(200)
);

create table menu(
	foodType VARCHAR(10) NOT NULL,
    	menuName VARCHAR(30) NOT NULL,
   	menuPrice VARCHAR(20) NOT NULL
);

create table destination(
	destination VARCHAR(20) NOT NULL
);

INSERT INTO Membership VALUES('eunah616', '0616', '은아', '010-1234-5678');
INSERT INTO Membership VALUES('imcom', 'com', '난컴공', '010-0101-1010');
INSERT INTO Membership VALUES('kimc', 'kim', '김씨', '010-7777-1212');

INSERT INTO Review VALUES('pizza', '피자조아', '쉬림프피자 처음 먹어보는데 진짜 새우 통통하니 맛있었어용~~!!');
INSERT INTO Review VALUES('pizza', '난컴공', '여기 불고기 피자가 진짜 맛있네요 굿굿');
INSERT INTO Review VALUES('pizza', '피자조아', '포테이토 피자 너무 맛있었어요!! 많이 파세요!!');
INSERT INTO Review VALUES('chicken', '김씨', '무난한 간장치킨이었습니다.');
INSERT INTO Review VALUES('chicken', '맛있으면우는사람', 'ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ');
INSERT INTO Review VALUES('chicken', '김씨', '여기는 양념이 맛있네요. 좋았습니다.');
INSERT INTO Review VALUES('burger', '은아', '토마토 빼주셔서 감사합니다 진짜 맛있었어요!!');
INSERT INTO Review VALUES('burger', '오이싫어', '치킨버거세트 시켰는데 콜라가 새어왔어요... 다음부턴 주의해서 배달해주세요ㅠㅠ');
INSERT INTO Review VALUES('burger', '카페인필요', '여기 진짜 버거 완전 맛있어요 앞으로 여기서 시켜먹을거에요!');

INSERT INTO menu VALUES('pizza', '치즈피자', '15000');
INSERT INTO menu VALUES('pizza', '불고기피자', '16000');
INSERT INTO menu VALUES('pizza', '베이컨포테이토피자', '16000');
INSERT INTO menu VALUES('pizza', '콤비네이션피자', '16000');
INSERT INTO menu VALUES('pizza', '베이컨쉬림프피자', '18000');
INSERT INTO menu VALUES('pizza', '바베큐불고기피자', '18000');
INSERT INTO menu VALUES('chicken', '후라이드치킨', '14000');
INSERT INTO menu VALUES('chicken', '양념치킨', '15000');
INSERT INTO menu VALUES('chicken', '간장치킨', '15000');
INSERT INTO menu VALUES('chicken', '마늘치킨', '15000');
INSERT INTO menu VALUES('burger', '치즈버거', '4000');
INSERT INTO menu VALUES('burger', '불고기버거', '4500');
INSERT INTO menu VALUES('burger', '새우버거', '4500');
INSERT INTO menu VALUES('burger', '치킨버거', '4500');
INSERT INTO menu VALUES('burger', '치즈버거세트', '5000');
INSERT INTO menu VALUES('burger', '불고기버거세트', '5500');
INSERT INTO menu VALUES('burger', '새우버거세트', '5500');
INSERT INTO menu VALUES('burger', '치킨버거세트', '5500');

INSERT INTO destination VALUES('A동');
INSERT INTO destination VALUES('B동');
INSERT INTO destination VALUES('C동');
INSERT INTO destination VALUES('D동');
INSERT INTO destination VALUES('E동');
INSERT INTO destination VALUES('G동');
INSERT INTO destination VALUES('P동');
INSERT INTO destination VALUES('산학융합관');
INSERT INTO destination VALUES('종합관');
INSERT INTO destination VALUES('TIP');
INSERT INTO destination VALUES('제2기숙사');
INSERT INTO destination VALUES('행정동');
INSERT INTO destination VALUES('시흥비즈니스센터');