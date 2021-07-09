-- MEMBER 샘플

INSERT INTO MEMBER (MEMBER_NO, MEMBER_ID, PW, NAME, EMAIL, REGDATE, MANAGER, STATE)
VALUES (MEMBER_SEQ.NEXTVAL, 'admin', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '관리자', 'admin@home.com', SYSDATE, 1, 0);

INSERT INTO MEMBER (MEMBER_NO, MEMBER_ID, PW, NAME, EMAIL, REGDATE, MANAGER, STATE)
VALUES (MEMBER_SEQ.NEXTVAL, 'user1', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '사용자1', 'user1@home.com', SYSDATE, 0, 0);

INSERT INTO MEMBER (MEMBER_NO, MEMBER_ID, PW, NAME, EMAIL, REGDATE, MANAGER, STATE)
VALUES (MEMBER_SEQ.NEXTVAL, 'user2', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '사용자2', 'user2@home.com', SYSDATE, 0, 0);

INSERT INTO MEMBER (MEMBER_NO, MEMBER_ID, PW, NAME, EMAIL, REGDATE, MANAGER, STATE)
VALUES (MEMBER_SEQ.NEXTVAL, 'user3', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '사용자3', 'user3@home.com', SYSDATE, 0, 0);

INSERT INTO MEMBER (MEMBER_NO, MEMBER_ID, PW, NAME, EMAIL, REGDATE, MANAGER, STATE)
VALUES (MEMBER_SEQ.NEXTVAL, 'user4', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '사용자4', 'user4@home.com', SYSDATE, 0, 0);


-- MEMBER_ADDRESS 샘플

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 2, '집', '서울시 강동구 강동동', 'a동 101호', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 2, '회사', '서울시 강동구 강동동', 'a동 102호', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 3, '집', '서울시 강서구 강서동', 'b동 101호', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 3, '회사', '서울시 강서구 강서동', 'b동 102호', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 4, '집', '서울시 강남구 강남동', 'c동 101호', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 4, '회사', '서울시 강남구 강남동', 'c동 102호', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 5, '집', '서울시 강북구 강북동', 'd동 101호', 0);


-- FAQ 샘플

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', 'SHOESFLY는 어떤 서비스인가요?', 'SHOESFLY는 쉽게 구매하기 어려운 한정판 스니커즈 등의 상품을 판매하고 거래할 수 있는 서비스 입니다.<br>모든 상품은 사용한 적이 없는 완전한 새상품이며, 전문가의 철저한 검수를 통해 안전하고 신속하게 거래할 수 있습니다.', SYSDATE, 0);

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', '패널티 정책', '판매자와 구매자의 건전한 거래를 위하여 아래 사유에 따라 패널티가 부과됩니다.<br>결제 정보 오류로 패널티 결제 실패시, 이용약관 제 24조("서비스 수수료")에 따라 별도의 고지없이 재결제를 시도합니다.<br><br><strong>판매거부</strong><br><hr><br>판매거래 체결 후, 1시간 이내 판매 거부 <span style="color: red">10.0%<span><br><hr><br>판매거래 체결 후, 1시간 이후 판매 거부 <span style="color: red">15.0%<span> <br><br><strong>발송지연</strong><br><hr><br>판매 거래 체결 후, <br> 48시간(일요일·공휴일 제외)이내 <span style="color: red">15.0%<span><br>발송 정보 미입력<br><br><strong>미입고</strong><br><hr><br>발송 정보 입력 후, <br>5일(일요일·공휴일 제외)이내 <span style="color: red">15.0%<span><br>검수센터에 미도착<br><hr><br>가송장 등 허위 정보 입력 <span style="color: red">15.0%<span><br><hr><br>거래 체결 전 상품 발송 <span style="color: red">15.0%<span><br><br><strong>검수 기준 악용</strong><br><br>해당 상품의 아래 검수기준 위반시에는 패널티를 부과합니다.(패키지와 상품 공통 적용)<br><br><strong>스니커즈</strong><br><hr><br>상품 불일치 <span style="color: red">10.0%<span><br><hr><br>사이즈 불일치 <span style="color: red">10.0%<span><br><hr><br>기본 구성품 누락<span style="color: red">10.0%<span><br><hr><br>', SYSDATE, 0);

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', '부적절행위 금지', '최종 수정일 2021년 1월 29일<br><br>아래에 해당하는 경우, 이용약관 제 7조(이용제한)에 따라 일시 정지나 영구이용정지 조치됩니다.<br>허위 사실 유포 관련 고의성이 확인될 시, 유관부서로 이관되어 처리될 수 있습니다.<br><br>● 가품 거래 시도<br>● 중고품 거래 시도<br>● 여러 개의 계정을 생성하여 자전거래<br>● 포인트 획득, 시세 조작 등의 목적으로 지인과 공모한 허위 거래<br>● 신용카드 불법 현금 유통(소위 카드깡)<br>● 커뮤니티 내 허위사실 유포 등 서비스 운영을 방해하는 각종 부정행위', SYSDATE, 0);

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', '입찰 마감기한은 무엇인가요?', '원하는 가격으로 구매 혹은 판매 입찰하는 경우, 입찰 마감기한을 설정하게 됩니다.<br>입찰 마감기한 내에 거래가 체결될 경우 결제와 판매 절차가 진행되며, 거래가 체결되지 않고 기간이 지날 경우 결제나 판매 진행 없이 입찰이 종료됩니다.', SYSDATE, 0);

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', '거래 진행 일정이 궁금해요', '거래가 체결된 시점부터 48시간(일요일·공휴일 제외)내에 상품을 발송해야 하며, 통상적으로 발송 후 1-2일 내에 KREAM 검수센터에 도착합니다. 다만 해당 배송기간은 코로나19, 명절 등의 특수 기간시 택배사의 물량에 따라 변동될 수 있습니다.<br>검수센터에 도착한 상품은 입고 완료 후 3영업일 내에 검수를 진행합니다. 검수에 합격할 경우, 판매자는 익일에 등록한 계좌로 판매 금액이 입금되며, 구매자는 당일 또는 익일에 배송이 시작됩니다.', SYSDATE, 0);

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', '판매 또는 구매하고 싶은 상품이 없어요.', '원하는 상품을 정확히 찾기 위해서 모델번호로 검색을 해보시기 바랍니다. 그래도 결과가 없을 경우, 검색 결과의 &#39;상품 등록 요청하기&#39; 버튼을 누르시거나, 서비스 내 [1:1 문의 > 일반 > 상품등록요청]으로 등록 요청할 상품의 정확한 정보(모델번호, 브랜드, 상품명)를 보내주시기 바랍니다. <br><br>요청 시 해당 상품의 박스의 라벨 스티커를 촬영해서 첨부해주시면 상품 등록에 도움이 되고있습니다.<br><br>* 상품 등록 요청 시, 등록 여부는 별도로 회신 드리지 않습니다.', SYSDATE, 0);


--NOTICE

INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, 'admin',  '[공지] 반스 올드스쿨(VN000D3HY28) 거래 일시 중지 안내','<p>안녕하세요. SHOESFLY입니다.</p><p>최근 반스 올드스쿨(VN000D3HY28) 상품 관련, 다수의 가품이 확인되고 있어 안전한 거래를 위하여 해당 상품의 거래를 일시 중지하게 되었습니다.</p><p><strong>1. 해당 상품 정가품 포인트를 공개합니다.</strong><br>사전에 고객님께 피해가 발생하는 일이 없도록 하기 위해 내부 논의 후 다음과 같이 주요 정가품 포인트를 공개하는 것으로 결정하였습니다.</p><ul><li>반스 로고 택의 폰트가 다름.</li><li>내부 택의 로고 폰트의 형태가 가품의 경우 매끄럽지 않음.</li><li>인솔 스티커에 반스 로고가 있으나, 가품의 경우 없음.</li><li>힐패치의 폰트가 정품과 다름.</li><li>UV라이트 발광시 힐패치의 반응이 정품과 다름.</li><li>박스 라벨지의 폰트가 정품과 다름.</li><li>박스의 구조와 형태가 정품과 다름.</li><li>그래픽 속지의 프린팅과 형태가 정품과 다름.</li><li>어퍼의 스티치 라인이 굴곡이 있으나, 가품의 경우 없음.</li></ul><p><strong>2.정가품 판정은 실물 상태의 상태를 기준으로 합니다.</strong><br>정가품 판정은 거래 체결 후 SHOESFLY검수센터에 입고된 실물 상품의 상태를 기준으로 하며, 실물 상품의 상태와 관계 없는 발매처 정보, 유통경로와 관련된 정보및 유통 과정 중 발생하는 서류나 증빙(수입통관필증, 구매영수증, 기타 보증서 등)등은 검수 및 판정에 있어 영향을 주지 않습니다.(구매 영수증, 보증서 등 유통 과정에서 발생한 서류나 증빙의 위변조는 감정 대상에 해당하지 않습니다.)</p><p>SHOESFLY는 현재 가품이 발견되고 있는 동일 유통 경로로 동일 개체를 다수 확보하여 중국 거래 플랫폼인 Poizon 및 NICE사에 정가품 감정을 의뢰 양 플랫폼 모두에서 가품 판정을 받은 사실이 있습니다.</p><p>지속적으로 국외 플랫폼들과 가품 개체들에 대한 실물 제공 및 당사판정 소견을 공유하여 가품 거래 근절을 위해 노력하겠습니다.</p><p>감사합니다.</p>', '2020/03/11', 0);

INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, 'admin',  '[공지] 2020년 4월 판매자 배송비 지원 이벤트 안내', '<p>안녕하세요. SHOESFLY입니다.<br>4월 판매자 배송비 지원 이벤트를 안내해드립니다.</p><ul><li><p>대상<br>이벤트 기간 중 검수 합격한 판매자 모두<br>기간 중 모든 검수 합격 건을 주문 별로 지원합니다.</p></li><li><p>기간<br>-2020년 4월 30일(목)23:59:59까지<br>*검수 합격 일시 기준이며, 예산 소진 시 조기 종료될 수 있습니다.</p></li><li><p>지급방법<br>검수 합격 다음 영업일에 정산 금액 지급 시 +4000원 포함하여 정산<br>*지원금이 포함된 금액으로 정산됩니다.</p></li></ul><br><p>감사합니다.</p><br><p><strong>유의사항</strong><br><ul><li>검수 합격 이후 정상적으로 종료되지 않은 판매 주문은 정산에서 제외됩니다.</li><li>본 이벤트는 당사 사정에 의하여 변경될 수 있습니다.</li></ul>','2020-03-31', 0);

INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, 'admin',  '[공지] 5월 8일(금) 임시 휴무 안내', '<p>안녕하세요. SHOESFLY입니다.<br>이번주 금요일은 사무실 내부 공사로 인하여 임시 휴무일입니다.<br><br></p><p><strong>임시휴무일 </strong>| 2021년 5월 8일(금)<br><br><p>5월 11일(월) 부터는 정상 이용이 가능하오니 참고 바랍니다.<br>감사합니다.</p>', '2020/05/04', 0);

INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, 'admin', '[공지] 택배 노조 파업으로 인한 배송 지연 안내', '<p>안녕하세요. SHOESFLY입니다.<br></p><p>현재 택배 노조 파업 여파로 인하여 일부 지역의 상품 집하 및 배송지연이 발생하고 있습니다.<br>이로 인하여 판매 거래 체결 후, 발송 마감 기한 내에 발송하였으나 집하 거부 또는 지연되어 거래가 취소되는 상황이 예상됩니다.</p><p>이미 일부 문의하신 고객님께 안내드렸던 바와 같이 택배사 집하거부 및 지연으로 인해 거래가 취소 될 경우에는 아래와 같이 페널티 취소를 도와드리고 있음을 안내드립니다.</p><ul><li>패널티 취소대상<br>택배사 집하 거부 또는 지연으로 인하여 거래 취소된 판매건</li><li>패널티 취소 방법<br><ul><li>택배사의 귀책으로 인한 사고 내용 증빙 자료를 팩스로 제출</li><li>증빙 자료 확인 후, 택배사 과실이 인정될 경우 페널티 취소</li></ul></li></ul><p>아울러 현재 상황과 관련하여 검수 완료 후, 출고되는 택배 역시 일부 지역에서 지연이 발생하고 있어 구매시 참고 부탁드립니다.</p><p>SHOESFLY에서는 택배사 상황을 지속 모니터링 하고 있으며, 상황에 따라 적절히 조치하도록 하겠습니다.</p><p>감사합니다.</p>', '2020/08/20', 0);

INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, 'admin', '[공지] 2021년 1월 판매자 배송비 지원 이벤트 안내', '<p>안녕하세요. SHOESFLY입니다.<br>새해 1월에도 판매 수수료/ 구매 배송비 무료 이벤트가 진행됩니다.</p><br><ul><li>기간<br>2021년 1월 31일 (일) 23:59:59까지(체결 일시 기준)</li><li>내용<br>판매 시 수수료 무료/구매 시 배송비 무료</li></ul><br><p>감사합니다.</p>', '2021/01/02', 0);


-- PRODUCT 샘플

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

-- INSERT : Jordan 1 Retro High OG University Blue 사이즈 분리
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 290);

-- INSERT : Jordan 1 Retro High OG Black Mocha 사이즈 분리
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 290);

-- INSERT : Nike x Sacai Blazer Low Magma Orange 사이즈 분리
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 290);

-- INSERT : Nike Dunk Low SP Veneer 사이즈 분리
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 290);

-- INSERT : New Balance 992 Made in USA Grey 사이즈 분리
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 290);

-- INSERT : New Balance 327 White Black 사이즈 분리
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 290);

-- INSERT : Adidas Yeezy Boost 350 V2 Zebra 사이즈 분리
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 290);

-- INSERT : Adidas Yeezy Boost 700 V2 Cream 사이즈 분리
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
        '127.0.0.1',
        0);

COMMIT;