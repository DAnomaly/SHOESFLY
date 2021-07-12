-- MEMBER ??

INSERT INTO MEMBER (MEMBER_NO, MEMBER_ID, PW, NAME, EMAIL, REGDATE, MANAGER, STATE)
VALUES (MEMBER_SEQ.NEXTVAL, 'admin', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', 'κ΄?λ¦¬μ', 'admin@home.com', SYSDATE, 1, 0);

INSERT INTO MEMBER (MEMBER_NO, MEMBER_ID, PW, NAME, EMAIL, REGDATE, MANAGER, STATE)
VALUES (MEMBER_SEQ.NEXTVAL, 'user1', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '?¬?©?1', 'user1@home.com', SYSDATE, 0, 0);

INSERT INTO MEMBER (MEMBER_NO, MEMBER_ID, PW, NAME, EMAIL, REGDATE, MANAGER, STATE)
VALUES (MEMBER_SEQ.NEXTVAL, 'user2', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '?¬?©?2', 'user2@home.com', SYSDATE, 0, 0);

INSERT INTO MEMBER (MEMBER_NO, MEMBER_ID, PW, NAME, EMAIL, REGDATE, MANAGER, STATE)
VALUES (MEMBER_SEQ.NEXTVAL, 'user3', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '?¬?©?3', 'user3@home.com', SYSDATE, 0, 0);

INSERT INTO MEMBER (MEMBER_NO, MEMBER_ID, PW, NAME, EMAIL, REGDATE, MANAGER, STATE)
VALUES (MEMBER_SEQ.NEXTVAL, 'user4', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '?¬?©?4', 'user4@home.com', SYSDATE, 0, 0);


-- MEMBER_ADDRESS ??

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 2, 'μ§?', '??Έ? κ°λκ΅? κ°λ?', 'a? 101?Έ', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 2, '??¬', '??Έ? κ°λκ΅? κ°λ?', 'a? 102?Έ', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 3, 'μ§?', '??Έ? κ°μκ΅? κ°μ?', 'b? 101?Έ', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 3, '??¬', '??Έ? κ°μκ΅? κ°μ?', 'b? 102?Έ', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 4, 'μ§?', '??Έ? κ°λ¨κ΅? κ°λ¨?', 'c? 101?Έ', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 4, '??¬', '??Έ? κ°λ¨κ΅? κ°λ¨?', 'c? 102?Έ', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 5, 'μ§?', '??Έ? κ°λΆκ΅? κ°λΆ?', 'd? 101?Έ', 0);


-- FAQ ??

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', 'SHOESFLY? ?΄?€ ?λΉμ€?Έκ°???', 'SHOESFLY? ?½κ²? κ΅¬λ§€?κΈ? ?΄? €?΄ ?? ? ?€?μ»€μ¦ ?±? ??? ?λ§€νκ³? κ±°λ?  ? ?? ?λΉμ€ ???€.<br>λͺ¨λ  ???? ?¬?©? ? ?΄ ?? ?? ? ????΄λ©?, ? λ¬Έκ?? μ² μ?? κ²??λ₯? ?΅?΄ ?? ?κ³? ? ??κ²? κ±°λ?  ? ??΅??€.', SYSDATE, 0);

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', '?¨??° ? μ±?', '?λ§€μ?? κ΅¬λ§€?? κ±΄μ ? κ±°λλ₯? ???¬ ?? ?¬? ? ?°?Ό ?¨??°κ°? λΆ?κ³Όλ©??€.<br>κ²°μ  ? λ³? ?€λ₯λ‘ ?¨??° κ²°μ  ?€?¨?, ?΄?©?½κ΄? ?  24μ‘?("?λΉμ€ ??λ£?")? ?°?Ό λ³λ? κ³ μ???΄ ?¬κ²°μ λ₯? ???©??€.<br><br><strong>?λ§€κ±°λΆ?</strong><br><hr><br>?λ§€κ±°? μ²΄κ²° ?, 1?κ°? ?΄?΄ ?λ§? κ±°λ? <span style="color: red">10.0%<span><br><hr><br>?λ§€κ±°? μ²΄κ²° ?, 1?κ°? ?΄? ?λ§? κ±°λ? <span style="color: red">15.0%<span> <br><br><strong>λ°μ‘μ§??°</strong><br><hr><br>?λ§? κ±°λ μ²΄κ²° ?, <br> 48?κ°?(?Ό??ΌΒ·κ³΅ν΄?Ό ? ?Έ)?΄?΄ <span style="color: red">15.0%<span><br>λ°μ‘ ? λ³? λ―Έμ? ₯<br><br><strong>λ―Έμκ³?</strong><br><hr><br>λ°μ‘ ? λ³? ?? ₯ ?, <br>5?Ό(?Ό??ΌΒ·κ³΅ν΄?Ό ? ?Έ)?΄?΄ <span style="color: red">15.0%<span><br>κ²???Ό?°? λ―Έλμ°?<br><hr><br>κ°??‘?₯ ?± ?? ? λ³? ?? ₯ <span style="color: red">15.0%<span><br><hr><br>κ±°λ μ²΄κ²° ?  ?? λ°μ‘ <span style="color: red">15.0%<span><br><br><strong>κ²?? κΈ°μ? ??©</strong><br><br>?΄?Ή ??? ?? κ²??κΈ°μ? ?λ°μ?? ?¨??°λ₯? λΆ?κ³Όν©??€.(?¨?€μ§??? ?? κ³΅ν΅ ? ?©)<br><br><strong>?€?μ»€μ¦</strong><br><hr><br>?? λΆμΌμΉ? <span style="color: red">10.0%<span><br><hr><br>?¬?΄μ¦? λΆμΌμΉ? <span style="color: red">10.0%<span><br><hr><br>κΈ°λ³Έ κ΅¬μ±? ??½<span style="color: red">10.0%<span><br><hr><br>', SYSDATE, 0);

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', 'λΆ?? ? ?? κΈμ?', 'μ΅μ’ ?? ?Ό 2021? 1? 29?Ό<br><br>??? ?΄?Ή?? κ²½μ°, ?΄?©?½κ΄? ?  7μ‘?(?΄?©? ?)? ?°?Ό ?Ό? ? μ§?? ?κ΅¬μ΄?©? μ§? μ‘°μΉ?©??€.<br>?? ?¬?€ ? ?¬ κ΄?? ¨ κ³ μ?±?΄ ??Έ?  ?, ? κ΄?λΆ??λ‘? ?΄κ΄???΄ μ²λ¦¬?  ? ??΅??€.<br><br>? κ°?? κ±°λ ??<br>? μ€κ³ ? κ±°λ ??<br>? ?¬?¬ κ°μ κ³μ ? ??±??¬ ?? κ±°λ<br>? ?¬?Έ?Έ ??, ??Έ μ‘°μ ?±? λͺ©μ ?Όλ‘? μ§??Έκ³? κ³΅λͺ¨? ?? κ±°λ<br>? ? ?©μΉ΄λ λΆλ² ?κΈ? ? ?΅(?? μΉ΄λκΉ?)<br>? μ»€λ?€λ?° ?΄ ???¬?€ ? ?¬ ?± ?λΉμ€ ?΄?? λ°©ν΄?? κ°μ’ λΆ?? ??', SYSDATE, 0);

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', '?μ°? λ§κ°κΈ°ν?? λ¬΄μ?Έκ°???', '??? κ°?κ²©μΌλ‘? κ΅¬λ§€ ?Ή?? ?λ§? ?μ°°ν? κ²½μ°, ?μ°? λ§κ°κΈ°ν? ?€? ?κ²? ?©??€.<br>?μ°? λ§κ°κΈ°ν ?΄? κ±°λκ°? μ²΄κ²°?  κ²½μ° κ²°μ ?? ?λ§? ? μ°¨κ? μ§ν?λ©?, κ±°λκ°? μ²΄κ²°?μ§? ?κ³? κΈ°κ°?΄ μ§??  κ²½μ° κ²°μ ? ?λ§? μ§ν ??΄ ?μ°°μ΄ μ’λ£?©??€.', SYSDATE, 0);

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', 'κ±°λ μ§ν ?Ό? ?΄ κΆκΈ?΄?', 'κ±°λκ°? μ²΄κ²°? ?? λΆ??° 48?κ°?(?Ό??ΌΒ·κ³΅ν΄?Ό ? ?Έ)?΄? ??? λ°μ‘?΄?Ό ?λ©?, ?΅?? ?Όλ‘? λ°μ‘ ? 1-2?Ό ?΄? KREAM κ²???Ό?°? ?μ°©ν©??€. ?€λ§? ?΄?Ή λ°°μ‘κΈ°κ°?? μ½λ‘?19, λͺμ  ?±? ?Ή? κΈ°κ°? ?λ°°μ¬? λ¬Όλ? ?°?Ό λ³???  ? ??΅??€.<br>κ²???Ό?°? ?μ°©ν ???? ?κ³? ?λ£? ? 3???Ό ?΄? κ²??λ₯? μ§ν?©??€. κ²??? ?©κ²©ν  κ²½μ°, ?λ§€μ? ?΅?Ό? ?±λ‘ν κ³μ’λ‘? ?λ§? κΈμ‘?΄ ?κΈλλ©?, κ΅¬λ§€?? ?Ή?Ό ?? ?΅?Ό? λ°°μ‘?΄ ???©??€.', SYSDATE, 0);

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', '?λ§? ?? κ΅¬λ§€?κ³? ?Ά?? ???΄ ??΄?.', '??? ??? ? ?? μ°ΎκΈ° ??΄? λͺ¨λΈλ²νΈλ‘? κ²??? ?΄λ³΄μκΈ? λ°λ??€. κ·Έλ? κ²°κ³Όκ°? ?? κ²½μ°, κ²?? κ²°κ³Ό? &#39;?? ?±λ‘? ?μ²??κΈ?&#39; λ²νΌ? ?λ₯΄μκ±°λ, ?λΉμ€ ?΄ [1:1 λ¬Έμ > ?Όλ°? > ???±λ‘μμ²?]?Όλ‘? ?±λ‘? ?μ²??  ??? ? ?? ? λ³?(λͺ¨λΈλ²νΈ, λΈλ?, ??λͺ?)λ₯? λ³΄λ΄μ£ΌμκΈ? λ°λ??€. <br><br>?μ²? ? ?΄?Ή ??? λ°μ€? ?Όλ²? ?€?°μ»€λ?? μ΄¬μ?΄? μ²¨λ??΄μ£Όμλ©? ?? ?±λ‘μ ????΄ ?κ³ μ?΅??€.<br><br>* ?? ?±λ‘? ?μ²? ?, ?±λ‘? ?¬λΆ?? λ³λλ‘? ??  ?λ¦¬μ? ??΅??€.', SYSDATE, 0);


--NOTICE

INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, 'admin',  '[κ³΅μ?] λ°μ€ ?¬??€μΏ?(VN000D3HY28) κ±°λ ?Ό? μ€μ? ??΄','<p>????Έ?. SHOESFLY???€.</p><p>μ΅κ·Ό λ°μ€ ?¬??€μΏ?(VN000D3HY28) ?? κ΄?? ¨, ?€?? κ°???΄ ??Έ?κ³? ??΄ ?? ? κ±°λλ₯? ???¬ ?΄?Ή ??? κ±°λλ₯? ?Ό? μ€μ??κ²? ???΅??€.</p><p><strong>1. ?΄?Ή ?? ? κ°?? ?¬?Έ?Έλ₯? κ³΅κ°?©??€.</strong><br>?¬? ? κ³ κ°?κ»? ?Ό?΄κ°? λ°μ?? ?Ό?΄ ??λ‘? ?κΈ? ??΄ ?΄λΆ? ?Ό? ? ?€?κ³? κ°μ΄ μ£Όμ ? κ°?? ?¬?Έ?Έλ₯? κ³΅κ°?? κ²μΌλ‘? κ²°μ ????΅??€.</p><ul><li>λ°μ€ λ‘κ³  ?? ?°?Έκ°? ?€λ¦?.</li><li>?΄λΆ? ?? λ‘κ³  ?°?Έ? ??κ°? κ°??? κ²½μ° λ§€λ?½μ§? ??.</li><li>?Έ? ?€?°μ»€μ λ°μ€ λ‘κ³ κ°? ??Ό?, κ°??? κ²½μ° ??.</li><li>??¨μΉμ ?°?Έκ°? ? ?κ³? ?€λ¦?.</li><li>UV?Ό?΄?Έ λ°κ΄? ??¨μΉμ λ°μ?΄ ? ?κ³? ?€λ¦?.</li><li>λ°μ€ ?Όλ²¨μ?? ?°?Έκ°? ? ?κ³? ?€λ¦?.</li><li>λ°μ€? κ΅¬μ‘°?? ??κ°? ? ?κ³? ?€λ¦?.</li><li>κ·Έλ?½ ?μ§?? ?λ¦°νκ³? ??κ°? ? ?κ³? ?€λ¦?.</li><li>?΄?Ό? ?€?°μΉ? ?Ό?Έ?΄ κ΅΄κ³‘?΄ ??Ό?, κ°??? κ²½μ° ??.</li></ul><p><strong>2.? κ°?? ?? ?? ?€λ¬? ??? ??λ₯? κΈ°μ??Όλ‘? ?©??€.</strong><br>? κ°?? ?? ?? κ±°λ μ²΄κ²° ? SHOESFLYκ²???Ό?°? ?κ³ λ ?€λ¬? ??? ??λ₯? κΈ°μ??Όλ‘? ?λ©?, ?€λ¬? ??? ???? κ΄?κ³? ?? λ°λ§€μ²? ? λ³?, ? ?΅κ²½λ‘?? κ΄?? ¨? ? λ³΄λ° ? ?΅ κ³Όμ  μ€? λ°μ?? ?λ₯λ μ¦λΉ(???΅κ΄??μ¦?, κ΅¬λ§€??μ¦?, κΈ°ν? λ³΄μ¦? ?±)?±?? κ²?? λ°? ?? ? ??΄ ??₯? μ£Όμ? ??΅??€.(κ΅¬λ§€ ??μ¦?, λ³΄μ¦? ?± ? ?΅ κ³Όμ ?? λ°μ? ?λ₯λ μ¦λΉ? ?λ³?μ‘°λ κ°μ  ???? ?΄?Ή?μ§? ??΅??€.)</p><p>SHOESFLY? ??¬ κ°???΄ λ°κ²¬?κ³? ?? ??Ό ? ?΅ κ²½λ‘λ‘? ??Ό κ°μ²΄λ₯? ?€? ?λ³΄ν?¬ μ€κ΅­ κ±°λ ??«?Ό?Έ Poizon λ°? NICE?¬? ? κ°?? κ°μ ? ?λ’? ? ??«?Ό λͺ¨λ?? κ°?? ?? ? λ°μ? ?¬?€?΄ ??΅??€.</p><p>μ§??? ?Όλ‘? κ΅??Έ ??«?Ό?€κ³? κ°?? κ°μ²΄?€? ??? ?€λ¬? ? κ³? λ°? ?Ή?¬??  ?κ²¬μ κ³΅μ ??¬ κ°?? κ±°λ κ·Όμ ? ??΄ ?Έ? ₯?κ² μ΅??€.</p><p>κ°μ¬?©??€.</p>', '2020/03/11', 0);

INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, 'admin',  '[κ³΅μ?] 2020? 4? ?λ§€μ λ°°μ‘λΉ? μ§?? ?΄λ²€νΈ ??΄', '<p>????Έ?. SHOESFLY???€.<br>4? ?λ§€μ λ°°μ‘λΉ? μ§?? ?΄λ²€νΈλ₯? ??΄?΄?λ¦½λ?€.</p><ul><li><p>???<br>?΄λ²€νΈ κΈ°κ° μ€? κ²?? ?©κ²©ν ?λ§€μ λͺ¨λ<br>κΈ°κ° μ€? λͺ¨λ  κ²?? ?©κ²? κ±΄μ μ£Όλ¬Έ λ³λ‘ μ§???©??€.</p></li><li><p>κΈ°κ°<br>-2020? 4? 30?Ό(λͺ?)23:59:59κΉμ?<br>*κ²?? ?©κ²? ?Ό? κΈ°μ??΄λ©?, ??° ?μ§? ? μ‘°κΈ° μ’λ£?  ? ??΅??€.</p></li><li><p>μ§?κΈλ°©λ²?<br>κ²?? ?©κ²? ?€? ???Ό? ? ?° κΈμ‘ μ§?κΈ? ? +4000? ?¬?¨??¬ ? ?°<br>*μ§??κΈμ΄ ?¬?¨? κΈμ‘?Όλ‘? ? ?°?©??€.</p></li></ul><br><p>κ°μ¬?©??€.</p><br><p><strong>? ??¬?­</strong><br><ul><li>κ²?? ?©κ²? ?΄? ? ?? ?Όλ‘? μ’λ£?μ§? ??? ?λ§? μ£Όλ¬Έ?? ? ?°?? ? ?Έ?©??€.</li><li>λ³? ?΄λ²€νΈ? ?Ή?¬ ?¬? ? ???¬ λ³?κ²½λ  ? ??΅??€.</li></ul>','2020-03-31', 0);

INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, 'admin',  '[κ³΅μ?] 5? 8?Ό(κΈ?) ?? ?΄λ¬? ??΄', '<p>????Έ?. SHOESFLY???€.<br>?΄λ²μ£Ό κΈμ?Ό?? ?¬λ¬΄μ€ ?΄λΆ? κ³΅μ¬λ‘? ?Έ??¬ ?? ?΄λ¬΄μΌ???€.<br><br></p><p><strong>???΄λ¬΄μΌ </strong>| 2021? 5? 8?Ό(κΈ?)<br><br><p>5? 11?Ό(?) λΆ??°? ? ? ?΄?©?΄ κ°??₯??€? μ°Έκ³  λ°λ??€.<br>κ°μ¬?©??€.</p>', '2020/05/04', 0);

INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, 'admin', '[κ³΅μ?] ?λ°? ?Έμ‘? ???Όλ‘? ?Έ? λ°°μ‘ μ§??° ??΄', '<p>????Έ?. SHOESFLY???€.<br></p><p>??¬ ?λ°? ?Έμ‘? ?? ?¬?λ‘? ?Έ??¬ ?ΌλΆ? μ§??­? ?? μ§ν λ°? λ°°μ‘μ§??°?΄ λ°μ?κ³? ??΅??€.<br>?΄λ‘? ?Έ??¬ ?λ§? κ±°λ μ²΄κ²° ?, λ°μ‘ λ§κ° κΈ°ν ?΄? λ°μ‘????Ό? μ§ν κ±°λ? ?? μ§??°??΄ κ±°λκ°? μ·¨μ?? ??©?΄ ???©??€.</p><p>?΄λ―? ?ΌλΆ? λ¬Έμ??  κ³ κ°?κ»? ??΄?? Έ? λ°μ? κ°μ΄ ?λ°°μ¬ μ§νκ±°λ? λ°? μ§??°?Όλ‘? ?Έ?΄ κ±°λκ°? μ·¨μ ?  κ²½μ°?? ???? κ°μ΄ ???° μ·¨μλ₯? ????λ¦¬κ³  ??? ??΄?λ¦½λ?€.</p><ul><li>?¨??° μ·¨μ???<br>?λ°°μ¬ μ§ν κ±°λ? ?? μ§??°?Όλ‘? ?Έ??¬ κ±°λ μ·¨μ? ?λ§€κ±΄</li><li>?¨??° μ·¨μ λ°©λ²<br><ul><li>?λ°°μ¬? κ·?μ±μΌλ‘? ?Έ? ?¬κ³? ?΄?© μ¦λΉ ?λ£λ?? ?©?€λ‘? ? μΆ?</li><li>μ¦λΉ ?λ£? ??Έ ?, ?λ°°μ¬ κ³Όμ€?΄ ?Έ? ?  κ²½μ° ???° μ·¨μ</li></ul></li></ul><p>??Έ?¬ ??¬ ??©κ³? κ΄?? ¨??¬ κ²?? ?λ£? ?, μΆκ³ ?? ?λ°? ?­? ?ΌλΆ? μ§??­?? μ§??°?΄ λ°μ?κ³? ??΄ κ΅¬λ§€? μ°Έκ³  λΆ???λ¦½λ?€.</p><p>SHOESFLY??? ?λ°°μ¬ ??©? μ§?? λͺ¨λ?°λ§? ?κ³? ??Όλ©?, ??©? ?°?Ό ? ? ? μ‘°μΉ??λ‘? ?κ² μ΅??€.</p><p>κ°μ¬?©??€.</p>', '2020/08/20', 0);

INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, 'admin', '[κ³΅μ?] 2021? 1? ?λ§€μ λ°°μ‘λΉ? μ§?? ?΄λ²€νΈ ??΄', '<p>????Έ?. SHOESFLY???€.<br>??΄ 1??? ?λ§? ??λ£?/ κ΅¬λ§€ λ°°μ‘λΉ? λ¬΄λ£ ?΄λ²€νΈκ°? μ§ν?©??€.</p><br><ul><li>κΈ°κ°<br>2021? 1? 31?Ό (?Ό) 23:59:59κΉμ?(μ²΄κ²° ?Ό? κΈ°μ?)</li><li>?΄?©<br>?λ§? ? ??λ£? λ¬΄λ£/κ΅¬λ§€ ? λ°°μ‘λΉ? λ¬΄λ£</li></ul><br><p>κ°μ¬?©??€.</p>', '2021/01/02', 0);


-- PRODUCT ??

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

-- INSERT : Jordan 1 Retro High OG University Blue ?¬?΄μ¦? λΆλ¦¬
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 290);

-- INSERT : Jordan 1 Retro High OG Black Mocha ?¬?΄μ¦? λΆλ¦¬
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 290);

-- INSERT : Nike x Sacai Blazer Low Magma Orange ?¬?΄μ¦? λΆλ¦¬
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 290);

-- INSERT : Nike Dunk Low SP Veneer ?¬?΄μ¦? λΆλ¦¬
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 290);

-- INSERT : New Balance 992 Made in USA Grey ?¬?΄μ¦? λΆλ¦¬
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 290);

-- INSERT : New Balance 327 White Black ?¬?΄μ¦? λΆλ¦¬
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 290);

-- INSERT : Adidas Yeezy Boost 350 V2 Zebra ?¬?΄μ¦? λΆλ¦¬
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 290);

-- INSERT : Adidas Yeezy Boost 700 V2 Cream ?¬?΄μ¦? λΆλ¦¬
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