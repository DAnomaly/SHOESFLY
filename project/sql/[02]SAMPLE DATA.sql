-- MEMBER ?��?��

INSERT INTO MEMBER (MEMBER_NO, MEMBER_ID, PW, NAME, EMAIL, REGDATE, MANAGER, STATE)
VALUES (MEMBER_SEQ.NEXTVAL, 'admin', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '�?리자', 'admin@home.com', SYSDATE, 1, 0);

INSERT INTO MEMBER (MEMBER_NO, MEMBER_ID, PW, NAME, EMAIL, REGDATE, MANAGER, STATE)
VALUES (MEMBER_SEQ.NEXTVAL, 'user1', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '?��?��?��1', 'user1@home.com', SYSDATE, 0, 0);

INSERT INTO MEMBER (MEMBER_NO, MEMBER_ID, PW, NAME, EMAIL, REGDATE, MANAGER, STATE)
VALUES (MEMBER_SEQ.NEXTVAL, 'user2', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '?��?��?��2', 'user2@home.com', SYSDATE, 0, 0);

INSERT INTO MEMBER (MEMBER_NO, MEMBER_ID, PW, NAME, EMAIL, REGDATE, MANAGER, STATE)
VALUES (MEMBER_SEQ.NEXTVAL, 'user3', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '?��?��?��3', 'user3@home.com', SYSDATE, 0, 0);

INSERT INTO MEMBER (MEMBER_NO, MEMBER_ID, PW, NAME, EMAIL, REGDATE, MANAGER, STATE)
VALUES (MEMBER_SEQ.NEXTVAL, 'user4', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '?��?��?��4', 'user4@home.com', SYSDATE, 0, 0);


-- MEMBER_ADDRESS ?��?��

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 2, '�?', '?��?��?�� 강동�? 강동?��', 'a?�� 101?��', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 2, '?��?��', '?��?��?�� 강동�? 강동?��', 'a?�� 102?��', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 3, '�?', '?��?��?�� 강서�? 강서?��', 'b?�� 101?��', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 3, '?��?��', '?��?��?�� 강서�? 강서?��', 'b?�� 102?��', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 4, '�?', '?��?��?�� 강남�? 강남?��', 'c?�� 101?��', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 4, '?��?��', '?��?��?�� 강남�? 강남?��', 'c?�� 102?��', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 5, '�?', '?��?��?�� 강북�? 강북?��', 'd?�� 101?��', 0);


-- FAQ ?��?��

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', 'SHOESFLY?�� ?��?�� ?��비스?���??��?', 'SHOESFLY?�� ?���? 구매?���? ?��?��?�� ?��?��?�� ?��?��커즈 ?��?�� ?��?��?�� ?��매하�? 거래?�� ?�� ?��?�� ?��비스 ?��?��?��.<br>모든 ?��?��?? ?��?��?�� ?��?�� ?��?�� ?��?��?�� ?��?��?��?���?, ?��문�??�� 철�??�� �??���? ?��?�� ?��?��?���? ?��?��?���? 거래?�� ?�� ?��?��?��?��.', SYSDATE, 0);

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', '?��?��?�� ?���?', '?��매자?? 구매?��?�� 건전?�� 거래�? ?��?��?�� ?��?�� ?��?��?�� ?��?�� ?��?��?���? �?과됩?��?��.<br>결제 ?���? ?��류로 ?��?��?�� 결제 ?��?��?��, ?��?��?���? ?�� 24�?("?��비스 ?��?���?")?�� ?��?�� 별도?�� 고�??��?�� ?��결제�? ?��?��?��?��?��.<br><br><strong>?��매거�?</strong><br><hr><br>?��매거?�� 체결 ?��, 1?���? ?��?�� ?���? 거�? <span style="color: red">10.0%<span><br><hr><br>?��매거?�� 체결 ?��, 1?���? ?��?�� ?���? 거�? <span style="color: red">15.0%<span> <br><br><strong>발송�??��</strong><br><hr><br>?���? 거래 체결 ?��, <br> 48?���?(?��?��?��·공휴?�� ?��?��)?��?�� <span style="color: red">15.0%<span><br>발송 ?���? 미입?��<br><br><strong>미입�?</strong><br><hr><br>발송 ?���? ?��?�� ?��, <br>5?��(?��?��?��·공휴?�� ?��?��)?��?�� <span style="color: red">15.0%<span><br>�??��?��?��?�� 미도�?<br><hr><br>�??��?�� ?�� ?��?�� ?���? ?��?�� <span style="color: red">15.0%<span><br><hr><br>거래 체결 ?�� ?��?�� 발송 <span style="color: red">15.0%<span><br><br><strong>�??�� 기�? ?��?��</strong><br><br>?��?�� ?��?��?�� ?��?�� �??��기�? ?��반시?��?�� ?��?��?���? �?과합?��?��.(?��?���??? ?��?�� 공통 ?��?��)<br><br><strong>?��?��커즈</strong><br><hr><br>?��?�� 불일�? <span style="color: red">10.0%<span><br><hr><br>?��?���? 불일�? <span style="color: red">10.0%<span><br><hr><br>기본 구성?�� ?��?��<span style="color: red">10.0%<span><br><hr><br>', SYSDATE, 0);

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', '�??��?��?��?�� 금�?', '최종 ?��?��?�� 2021?�� 1?�� 29?��<br><br>?��?��?�� ?��?��?��?�� 경우, ?��?��?���? ?�� 7�?(?��?��?��?��)?�� ?��?�� ?��?�� ?���??�� ?��구이?��?���? 조치?��?��?��.<br>?��?�� ?��?�� ?��?�� �??�� 고의?��?�� ?��?��?�� ?��, ?���?�??���? ?���??��?�� 처리?�� ?�� ?��?��?��?��.<br><br>?�� �??�� 거래 ?��?��<br>?�� 중고?�� 거래 ?��?��<br>?�� ?��?�� 개의 계정?�� ?��?��?��?�� ?��?��거래<br>?�� ?��?��?�� ?��?��, ?��?�� 조작 ?��?�� 목적?���? �??���? 공모?�� ?��?�� 거래<br>?�� ?��?��카드 불법 ?���? ?��?��(?��?�� 카드�?)<br>?�� 커�?�니?�� ?�� ?��?��?��?�� ?��?�� ?�� ?��비스 ?��?��?�� 방해?��?�� 각종 �??��?��?��', SYSDATE, 0);

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', '?���? 마감기한?? 무엇?���??��?', '?��?��?�� �?격으�? 구매 ?��?? ?���? ?��찰하?�� 경우, ?���? 마감기한?�� ?��?��?���? ?��?��?��.<br>?���? 마감기한 ?��?�� 거래�? 체결?�� 경우 결제?? ?���? ?��차�? 진행?���?, 거래�? 체결?���? ?���? 기간?�� �??�� 경우 결제?�� ?���? 진행 ?��?�� ?��찰이 종료?��?��?��.', SYSDATE, 0);

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', '거래 진행 ?��?��?�� 궁금?��?��', '거래�? 체결?�� ?��?���??�� 48?���?(?��?��?��·공휴?�� ?��?��)?��?�� ?��?��?�� 발송?��?�� ?���?, ?��?��?��?���? 발송 ?�� 1-2?�� ?��?�� KREAM �??��?��?��?�� ?��착합?��?��. ?���? ?��?�� 배송기간?? 코로?��19, 명절 ?��?�� ?��?�� 기간?�� ?��배사?�� 물량?�� ?��?�� �??��?�� ?�� ?��?��?��?��.<br>�??��?��?��?�� ?��착한 ?��?��?? ?���? ?���? ?�� 3?��?��?�� ?��?�� �??���? 진행?��?��?��. �??��?�� ?��격할 경우, ?��매자?�� ?��?��?�� ?��록한 계좌�? ?���? 금액?�� ?��금되�?, 구매?��?�� ?��?�� ?��?�� ?��?��?�� 배송?�� ?��?��?��?��?��.', SYSDATE, 0);

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', '?���? ?��?�� 구매?���? ?��?? ?��?��?�� ?��?��?��.', '?��?��?�� ?��?��?�� ?��?��?�� 찾기 ?��?��?�� 모델번호�? �??��?�� ?��보시�? 바랍?��?��. 그래?�� 결과�? ?��?�� 경우, �??�� 결과?�� &#39;?��?�� ?���? ?���??���?&#39; 버튼?�� ?��르시거나, ?��비스 ?�� [1:1 문의 > ?���? > ?��?��?��록요�?]?���? ?���? ?���??�� ?��?��?�� ?��?��?�� ?���?(모델번호, 브랜?��, ?��?���?)�? 보내주시�? 바랍?��?��. <br><br>?���? ?�� ?��?�� ?��?��?�� 박스?�� ?���? ?��?��커�?? 촬영?��?�� 첨�??��주시�? ?��?�� ?��록에 ?��???�� ?��고있?��?��?��.<br><br>* ?��?�� ?���? ?���? ?��, ?���? ?���??�� 별도�? ?��?�� ?��리�? ?��?��?��?��.', SYSDATE, 0);


--NOTICE

INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, 'admin',  '[공�?] 반스 ?��?��?���?(VN000D3HY28) 거래 ?��?�� 중�? ?��?��','<p>?��?��?��?��?��. SHOESFLY?��?��?��.</p><p>최근 반스 ?��?��?���?(VN000D3HY28) ?��?�� �??��, ?��?��?�� �??��?�� ?��?��?���? ?��?�� ?��?��?�� 거래�? ?��?��?�� ?��?�� ?��?��?�� 거래�? ?��?�� 중�??���? ?��?��?��?��?��.</p><p><strong>1. ?��?�� ?��?�� ?���??�� ?��?��?���? 공개?��?��?��.</strong><br>?��?��?�� 고객?���? ?��?���? 발생?��?�� ?��?�� ?��?���? ?���? ?��?�� ?���? ?��?�� ?�� ?��?���? 같이 주요 ?���??�� ?��?��?���? 공개?��?�� 것으�? 결정?��???��?��?��.</p><ul><li>반스 로고 ?��?�� ?��?���? ?���?.</li><li>?���? ?��?�� 로고 ?��?��?�� ?��?���? �??��?�� 경우 매끄?���? ?��?��.</li><li>?��?�� ?��?��커에 반스 로고�? ?��?��?��, �??��?�� 경우 ?��?��.</li><li>?��?��치의 ?��?���? ?��?���? ?���?.</li><li>UV?��?��?�� 발광?�� ?��?��치의 반응?�� ?��?���? ?���?.</li><li>박스 ?��벨�??�� ?��?���? ?��?���? ?���?.</li><li>박스?�� 구조?? ?��?���? ?��?���? ?���?.</li><li>그래?�� ?���??�� ?��린팅�? ?��?���? ?��?���? ?���?.</li><li>?��?��?�� ?��?���? ?��?��?�� 굴곡?�� ?��?��?��, �??��?�� 경우 ?��?��.</li></ul><p><strong>2.?���??�� ?��?��?? ?���? ?��?��?�� ?��?���? 기�??���? ?��?��?��.</strong><br>?���??�� ?��?��?? 거래 체결 ?�� SHOESFLY�??��?��?��?�� ?��고된 ?���? ?��?��?�� ?��?���? 기�??���? ?���?, ?���? ?��?��?�� ?��?��?? �?�? ?��?�� 발매�? ?���?, ?��?��경로?? �??��?�� ?��보및 ?��?�� 과정 �? 발생?��?�� ?��류나 증빙(?��?��?���??���?, 구매?��?���?, 기�? 보증?�� ?��)?��?? �??�� �? ?��?��?�� ?��?�� ?��?��?�� 주�? ?��?��?��?��.(구매 ?��?���?, 보증?�� ?�� ?��?�� 과정?��?�� 발생?�� ?��류나 증빙?�� ?���?조는 감정 ???��?�� ?��?��?���? ?��?��?��?��.)</p><p>SHOESFLY?�� ?��?�� �??��?�� 발견?���? ?��?�� ?��?�� ?��?�� 경로�? ?��?�� 개체�? ?��?�� ?��보하?�� 중국 거래 ?��?��?��?�� Poizon �? NICE?��?�� ?���??�� 감정?�� ?���? ?�� ?��?��?�� 모두?��?�� �??�� ?��?��?�� 받�? ?��?��?�� ?��?��?��?��.</p><p>�??��?��?���? �??�� ?��?��?��?���? �??�� 개체?��?�� ???�� ?���? ?���? �? ?��?��?��?�� ?��견을 공유?��?�� �??�� 거래 근절?�� ?��?�� ?��?��?��겠습?��?��.</p><p>감사?��?��?��.</p>', '2020/03/11', 0);

INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, 'admin',  '[공�?] 2020?�� 4?�� ?��매자 배송�? �??�� ?��벤트 ?��?��', '<p>?��?��?��?��?��. SHOESFLY?��?��?��.<br>4?�� ?��매자 배송�? �??�� ?��벤트�? ?��?��?��?��립니?��.</p><ul><li><p>???��<br>?��벤트 기간 �? �??�� ?��격한 ?��매자 모두<br>기간 �? 모든 �??�� ?���? 건을 주문 별로 �??��?��?��?��.</p></li><li><p>기간<br>-2020?�� 4?�� 30?��(�?)23:59:59까�?<br>*�??�� ?���? ?��?�� 기�??���?, ?��?�� ?���? ?�� 조기 종료?�� ?�� ?��?��?��?��.</p></li><li><p>�?급방�?<br>�??�� ?���? ?��?�� ?��?��?��?�� ?��?�� 금액 �?�? ?�� +4000?�� ?��?��?��?�� ?��?��<br>*�??��금이 ?��?��?�� 금액?���? ?��?��?��?��?��.</p></li></ul><br><p>감사?��?��?��.</p><br><p><strong>?��?��?��?��</strong><br><ul><li>�??�� ?���? ?��?�� ?��?��?��?���? 종료?���? ?��?? ?���? 주문?? ?��?��?��?�� ?��?��?��?��?��.</li><li>�? ?��벤트?�� ?��?�� ?��?��?�� ?��?��?�� �?경될 ?�� ?��?��?��?��.</li></ul>','2020-03-31', 0);

INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, 'admin',  '[공�?] 5?�� 8?��(�?) ?��?�� ?���? ?��?��', '<p>?��?��?��?��?��. SHOESFLY?��?��?��.<br>?��번주 금요?��?? ?��무실 ?���? 공사�? ?��?��?�� ?��?�� ?��무일?��?��?��.<br><br></p><p><strong>?��?��?��무일 </strong>| 2021?�� 5?�� 8?��(�?)<br><br><p>5?�� 11?��(?��) �??��?�� ?��?�� ?��?��?�� �??��?��?��?�� 참고 바랍?��?��.<br>감사?��?��?��.</p>', '2020/05/04', 0);

INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, 'admin', '[공�?] ?���? ?���? ?��?��?���? ?��?�� 배송 �??�� ?��?��', '<p>?��?��?��?��?��. SHOESFLY?��?��?��.<br></p><p>?��?�� ?���? ?���? ?��?�� ?��?���? ?��?��?�� ?���? �??��?�� ?��?�� 집하 �? 배송�??��?�� 발생?���? ?��?��?��?��.<br>?���? ?��?��?�� ?���? 거래 체결 ?��, 발송 마감 기한 ?��?�� 발송?��???��?�� 집하 거�? ?��?�� �??��?��?�� 거래�? 취소?��?�� ?��?��?�� ?��?��?��?��?��.</p><p>?���? ?���? 문의?��?�� 고객?���? ?��?��?��?��?�� 바�? 같이 ?��배사 집하거�? �? �??��?���? ?��?�� 거래�? 취소 ?�� 경우?��?�� ?��?��?? 같이 ?��?��?�� 취소�? ?��???��리고 ?��?��?�� ?��?��?��립니?��.</p><ul><li>?��?��?�� 취소???��<br>?��배사 집하 거�? ?��?�� �??��?���? ?��?��?�� 거래 취소?�� ?��매건</li><li>?��?��?�� 취소 방법<br><ul><li>?��배사?�� �?책으�? ?��?�� ?���? ?��?�� 증빙 ?��료�?? ?��?���? ?���?</li><li>증빙 ?���? ?��?�� ?��, ?��배사 과실?�� ?��?��?�� 경우 ?��?��?�� 취소</li></ul></li></ul><p>?��?��?�� ?��?�� ?��?���? �??��?��?�� �??�� ?���? ?��, 출고?��?�� ?���? ?��?�� ?���? �??��?��?�� �??��?�� 발생?���? ?��?�� 구매?�� 참고 �??��?��립니?��.</p><p>SHOESFLY?��?��?�� ?��배사 ?��?��?�� �??�� 모니?���? ?���? ?��?���?, ?��?��?�� ?��?�� ?��?��?�� 조치?��?���? ?��겠습?��?��.</p><p>감사?��?��?��.</p>', '2020/08/20', 0);

INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, 'admin', '[공�?] 2021?�� 1?�� ?��매자 배송�? �??�� ?��벤트 ?��?��', '<p>?��?��?��?��?��. SHOESFLY?��?��?��.<br>?��?�� 1?��?��?�� ?���? ?��?���?/ 구매 배송�? 무료 ?��벤트�? 진행?��?��?��.</p><br><ul><li>기간<br>2021?�� 1?�� 31?�� (?��) 23:59:59까�?(체결 ?��?�� 기�?)</li><li>?��?��<br>?���? ?�� ?��?���? 무료/구매 ?�� 배송�? 무료</li></ul><br><p>감사?��?��?��.</p>', '2021/01/02', 0);


-- PRODUCT ?��?��

INSERT 
  INTO PRODUCT 
VALUES ('555088-134', 
        'Jordan 1 Retro High OG University Blue',
        'Jordan',
        199000,
        '555088-134.jsp',
        0);

INSERT 
  INTO PRODUCT 
VALUES ('555088-105', 
        'Jordan 1 Retro High OG Black Mocha',
        'Jordan',
        119000,
        '555088-105.jsp',
        0);
                            
INSERT 
  INTO PRODUCT 
VALUES ('DD1877-100', 
        'Nike x Sacai Blazer Low Magma Orange',
        'Nike',
        139000,
        'DD1877-100.jsp',
        0);
                             
INSERT
  INTO PRODUCT
VALUES ('DA1469-200', 
        'Nike Dunk Low SP Veneer',
        'Nike',
        119000,
        'DA1469-200.jsp',
        0);
                            
INSERT 
  INTO PRODUCT 
VALUES ('M992GR', 
        'New Balance 992 Made in USA Grey',
        'New Balance',
        259000,
        'M992GR.jsp',
        0);
                            
INSERT 
  INTO PRODUCT
VALUES ('MS327FE', 
        'New Balance 327 White Black',
        'New Balance',
        109000,
        'MS327FE.jsp',
        0);

INSERT 
  INTO PRODUCT
VALUES ('CP9654', 
        'Adidas Yeezy Boost 350 V2 Zebra',
        'Adidas',
        289000,
        'CP9654.jsp',
        0);
                            
INSERT 
  INTO PRODUCT 
VALUES ('GY7924', 
        'Adidas Yeezy Boost 700 V2 Cream',
        'Adidas',
        309000,
        'GY7924.jsp',
        0);


-- PRODUCT_DETAIL

-- INSERT : Jordan 1 Retro High OG University Blue ?��?���? 분리
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 290);

-- INSERT : Jordan 1 Retro High OG Black Mocha ?��?���? 분리
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 290);

-- INSERT : Nike x Sacai Blazer Low Magma Orange ?��?���? 분리
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 290);

-- INSERT : Nike Dunk Low SP Veneer ?��?���? 분리
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 290);

-- INSERT : New Balance 992 Made in USA Grey ?��?���? 분리
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 290);

-- INSERT : New Balance 327 White Black ?��?���? 분리
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 290);

-- INSERT : Adidas Yeezy Boost 350 V2 Zebra ?��?���? 분리
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 290);

-- INSERT : Adidas Yeezy Boost 700 V2 Cream ?��?���? 분리
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 700 V2 Cream', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 700 V2 Cream', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 700 V2 Cream', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 700 V2 Cream', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 700 V2 Cream', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 700 V2 Cream', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 700 V2 Cream', 290);


-- REVIEW

INSERT 
  INTO REVIEW
VALUES (REVIEW_SEQ.NEXTVAL,
        'user1',
        'Jordan 1 Retro High OG University Blue',
        'TITLE_1',
        'CONTENT_1',
        '555088-134.jpg',
        SYSDATE,
        SYSDATE,
        0,
        '127.0.0.1',
        0);
    
INSERT 
  INTO REVIEW
VALUES (REVIEW_SEQ.NEXTVAL,
        'user1',
        'Jordan 1 Retro High OG Black Mocha',
        'TITLE_2',
        'CONTENT_2',
        '555088-105.jpg',
        SYSDATE,
        SYSDATE,
        0,
        '127.0.0.1',
        0);
        
INSERT 
  INTO REVIEW
VALUES (REVIEW_SEQ.NEXTVAL,
        'user2',
        'Nike x Sacai Blazer Low Magma Orange',
        'TITLE_3',
        'CONTENT_3',
        'DD1877-100.jpg',
        SYSDATE,
        SYSDATE,
        0,
        '127.0.0.1',
        0);
        
INSERT 
  INTO REVIEW
VALUES (REVIEW_SEQ.NEXTVAL,
        'user2',
        'Jordan 1 Retro High OG University Blue',
        'TITLE_4',
        'CONTENT_4',
        '555088-134.jpg',
        SYSDATE,
        SYSDATE,
        0,
        '127.0.0.1',
        0);
        
INSERT 
  INTO REVIEW
VALUES (REVIEW_SEQ.NEXTVAL,
        'user3',
        'Nike Dunk Low SP Veneer',
        'TITLE_4',
        'CONTENT_4',
        'DA1469-200.jpg',
        SYSDATE,
        SYSDATE,
        0,
        '127.0.0.1',
        0);
        
INSERT 
  INTO REVIEW
VALUES (REVIEW_SEQ.NEXTVAL,
        'user3',
        'New Balance 992 Made in USA Grey',
        'TITLE_5',
        'CONTENT_5',
        'M992GR.jsp',
        SYSDATE,
        SYSDATE,
        0,
        '127.0.0.1',
        0);
        
INSERT 
  INTO REVIEW
VALUES (REVIEW_SEQ.NEXTVAL,
        'user4',
        'New Balance 327 White Black',
        'TITLE_6',
        'CONTENT_6',
        'MS327FE.jsp',
        SYSDATE,
        SYSDATE,
        0,
        '127.0.0.1',
        0);
        
INSERT 
  INTO REVIEW
VALUES (REVIEW_SEQ.NEXTVAL,
        'user4',
        'Adidas Yeezy Boost 350 V2 Zebra',
        'TITLE_7',
        'CONTENT_7',
        'CP9654.jsp',
        SYSDATE,
        SYSDATE,
        0,
        '127.0.0.1',
        0);
        
INSERT 
  INTO REVIEW
VALUES (REVIEW_SEQ.NEXTVAL,
        'user4',
        'Adidas Yeezy Boost 700 V2 Cream',
        'TITLE_1',
        'CONTENT_1',
        'GY7924.jsp',
        SYSDATE,
        SYSDATE,
        0,
        '127.0.0.1',
        0);

COMMIT;