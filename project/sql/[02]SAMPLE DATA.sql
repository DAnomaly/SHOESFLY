-- MEMBER ?ƒ˜?”Œ

INSERT INTO MEMBER (MEMBER_NO, MEMBER_ID, PW, NAME, EMAIL, REGDATE, MANAGER, STATE)
VALUES (MEMBER_SEQ.NEXTVAL, 'admin', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', 'ê´?ë¦¬ìž', 'admin@home.com', SYSDATE, 1, 0);

INSERT INTO MEMBER (MEMBER_NO, MEMBER_ID, PW, NAME, EMAIL, REGDATE, MANAGER, STATE)
VALUES (MEMBER_SEQ.NEXTVAL, 'user1', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '?‚¬?š©?ž1', 'user1@home.com', SYSDATE, 0, 0);

INSERT INTO MEMBER (MEMBER_NO, MEMBER_ID, PW, NAME, EMAIL, REGDATE, MANAGER, STATE)
VALUES (MEMBER_SEQ.NEXTVAL, 'user2', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '?‚¬?š©?ž2', 'user2@home.com', SYSDATE, 0, 0);

INSERT INTO MEMBER (MEMBER_NO, MEMBER_ID, PW, NAME, EMAIL, REGDATE, MANAGER, STATE)
VALUES (MEMBER_SEQ.NEXTVAL, 'user3', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '?‚¬?š©?ž3', 'user3@home.com', SYSDATE, 0, 0);

INSERT INTO MEMBER (MEMBER_NO, MEMBER_ID, PW, NAME, EMAIL, REGDATE, MANAGER, STATE)
VALUES (MEMBER_SEQ.NEXTVAL, 'user4', '0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c', '?‚¬?š©?ž4', 'user4@home.com', SYSDATE, 0, 0);


-- MEMBER_ADDRESS ?ƒ˜?”Œ

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 2, 'ì§?', '?„œ?š¸?‹œ ê°•ë™êµ? ê°•ë™?™', 'a?™ 101?˜¸', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 2, '?šŒ?‚¬', '?„œ?š¸?‹œ ê°•ë™êµ? ê°•ë™?™', 'a?™ 102?˜¸', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 3, 'ì§?', '?„œ?š¸?‹œ ê°•ì„œêµ? ê°•ì„œ?™', 'b?™ 101?˜¸', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 3, '?šŒ?‚¬', '?„œ?š¸?‹œ ê°•ì„œêµ? ê°•ì„œ?™', 'b?™ 102?˜¸', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 4, 'ì§?', '?„œ?š¸?‹œ ê°•ë‚¨êµ? ê°•ë‚¨?™', 'c?™ 101?˜¸', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 4, '?šŒ?‚¬', '?„œ?š¸?‹œ ê°•ë‚¨êµ? ê°•ë‚¨?™', 'c?™ 102?˜¸', 0);

INSERT INTO MEMBER_ADDRESS (MEMBER_ADDRESS_NO, MEMBER_NO, NAME, ADDR1, ADDR2, STATE)
VALUES (MEMBER_ADDRESS_SEQ.NEXTVAL, 5, 'ì§?', '?„œ?š¸?‹œ ê°•ë¶êµ? ê°•ë¶?™', 'd?™ 101?˜¸', 0);


-- FAQ ?ƒ˜?”Œ

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', 'SHOESFLY?Š” ?–´?–¤ ?„œë¹„ìŠ¤?¸ê°??š”?', 'SHOESFLY?Š” ?‰½ê²? êµ¬ë§¤?•˜ê¸? ?–´? ¤?š´ ?•œ? •?Œ ?Š¤?‹ˆì»¤ì¦ˆ ?“±?˜ ?ƒ?’ˆ?„ ?Œë§¤í•˜ê³? ê±°ëž˜?•  ?ˆ˜ ?žˆ?Š” ?„œë¹„ìŠ¤ ?ž…?‹ˆ?‹¤.<br>ëª¨ë“  ?ƒ?’ˆ?? ?‚¬?š©?•œ ? ?´ ?—†?Š” ?™„? „?•œ ?ƒˆ?ƒ?’ˆ?´ë©?, ? „ë¬¸ê??˜ ì² ì??•œ ê²??ˆ˜ë¥? ?†µ?•´ ?•ˆ? „?•˜ê³? ?‹ ?†?•˜ê²? ê±°ëž˜?•  ?ˆ˜ ?žˆ?Šµ?‹ˆ?‹¤.', SYSDATE, 0);

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', '?Œ¨?„?‹° ? •ì±?', '?Œë§¤ìž?? êµ¬ë§¤?ž?˜ ê±´ì „?•œ ê±°ëž˜ë¥? ?œ„?•˜?—¬ ?•„?ž˜ ?‚¬?œ ?— ?”°?¼ ?Œ¨?„?‹°ê°? ë¶?ê³¼ë©?‹ˆ?‹¤.<br>ê²°ì œ ? •ë³? ?˜¤ë¥˜ë¡œ ?Œ¨?„?‹° ê²°ì œ ?‹¤?Œ¨?‹œ, ?´?š©?•½ê´? ? œ 24ì¡?("?„œë¹„ìŠ¤ ?ˆ˜?ˆ˜ë£?")?— ?”°?¼ ë³„ë„?˜ ê³ ì??—†?´ ?ž¬ê²°ì œë¥? ?‹œ?„?•©?‹ˆ?‹¤.<br><br><strong>?Œë§¤ê±°ë¶?</strong><br><hr><br>?Œë§¤ê±°?ž˜ ì²´ê²° ?›„, 1?‹œê°? ?´?‚´ ?Œë§? ê±°ë? <span style="color: red">10.0%<span><br><hr><br>?Œë§¤ê±°?ž˜ ì²´ê²° ?›„, 1?‹œê°? ?´?›„ ?Œë§? ê±°ë? <span style="color: red">15.0%<span> <br><br><strong>ë°œì†¡ì§??—°</strong><br><hr><br>?Œë§? ê±°ëž˜ ì²´ê²° ?›„, <br> 48?‹œê°?(?¼?š”?¼Â·ê³µíœ´?¼ ? œ?™¸)?´?‚´ <span style="color: red">15.0%<span><br>ë°œì†¡ ? •ë³? ë¯¸ìž…? ¥<br><br><strong>ë¯¸ìž…ê³?</strong><br><hr><br>ë°œì†¡ ? •ë³? ?ž…? ¥ ?›„, <br>5?¼(?¼?š”?¼Â·ê³µíœ´?¼ ? œ?™¸)?´?‚´ <span style="color: red">15.0%<span><br>ê²??ˆ˜?„¼?„°?— ë¯¸ë„ì°?<br><hr><br>ê°??†¡?ž¥ ?“± ?—ˆ?œ„ ? •ë³? ?ž…? ¥ <span style="color: red">15.0%<span><br><hr><br>ê±°ëž˜ ì²´ê²° ? „ ?ƒ?’ˆ ë°œì†¡ <span style="color: red">15.0%<span><br><br><strong>ê²??ˆ˜ ê¸°ì? ?•…?š©</strong><br><br>?•´?‹¹ ?ƒ?’ˆ?˜ ?•„?ž˜ ê²??ˆ˜ê¸°ì? ?œ„ë°˜ì‹œ?—?Š” ?Œ¨?„?‹°ë¥? ë¶?ê³¼í•©?‹ˆ?‹¤.(?Œ¨?‚¤ì§??? ?ƒ?’ˆ ê³µí†µ ? ?š©)<br><br><strong>?Š¤?‹ˆì»¤ì¦ˆ</strong><br><hr><br>?ƒ?’ˆ ë¶ˆì¼ì¹? <span style="color: red">10.0%<span><br><hr><br>?‚¬?´ì¦? ë¶ˆì¼ì¹? <span style="color: red">10.0%<span><br><hr><br>ê¸°ë³¸ êµ¬ì„±?’ˆ ?ˆ„?½<span style="color: red">10.0%<span><br><hr><br>', SYSDATE, 0);

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', 'ë¶?? ? ˆ?–‰?œ„ ê¸ˆì?', 'ìµœì¢… ?ˆ˜? •?¼ 2021?…„ 1?›” 29?¼<br><br>?•„?ž˜?— ?•´?‹¹?•˜?Š” ê²½ìš°, ?´?š©?•½ê´? ? œ 7ì¡?(?´?š©? œ?•œ)?— ?”°?¼ ?¼?‹œ ? •ì§??‚˜ ?˜êµ¬ì´?š©? •ì§? ì¡°ì¹˜?©?‹ˆ?‹¤.<br>?—ˆ?œ„ ?‚¬?‹¤ ?œ ?¬ ê´?? ¨ ê³ ì˜?„±?´ ?™•?¸?  ?‹œ, ?œ ê´?ë¶??„œë¡? ?´ê´??˜?–´ ì²˜ë¦¬?  ?ˆ˜ ?žˆ?Šµ?‹ˆ?‹¤.<br><br>?— ê°??’ˆ ê±°ëž˜ ?‹œ?„<br>?— ì¤‘ê³ ?’ˆ ê±°ëž˜ ?‹œ?„<br>?— ?—¬?Ÿ¬ ê°œì˜ ê³„ì •?„ ?ƒ?„±?•˜?—¬ ?ž? „ê±°ëž˜<br>?— ?¬?¸?Š¸ ?š?“, ?‹œ?„¸ ì¡°ìž‘ ?“±?˜ ëª©ì ?œ¼ë¡? ì§??¸ê³? ê³µëª¨?•œ ?—ˆ?œ„ ê±°ëž˜<br>?— ?‹ ?š©ì¹´ë“œ ë¶ˆë²• ?˜„ê¸? ?œ ?†µ(?†Œ?œ„ ì¹´ë“œê¹?)<br>?— ì»¤ë?¤ë‹ˆ?‹° ?‚´ ?—ˆ?œ„?‚¬?‹¤ ?œ ?¬ ?“± ?„œë¹„ìŠ¤ ?š´?˜?„ ë°©í•´?•˜?Š” ê°ì¢… ë¶?? •?–‰?œ„', SYSDATE, 0);

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', '?ž…ì°? ë§ˆê°ê¸°í•œ?? ë¬´ì—‡?¸ê°??š”?', '?›?•˜?Š” ê°?ê²©ìœ¼ë¡? êµ¬ë§¤ ?˜¹?? ?Œë§? ?ž…ì°°í•˜?Š” ê²½ìš°, ?ž…ì°? ë§ˆê°ê¸°í•œ?„ ?„¤? •?•˜ê²? ?©?‹ˆ?‹¤.<br>?ž…ì°? ë§ˆê°ê¸°í•œ ?‚´?— ê±°ëž˜ê°? ì²´ê²°?  ê²½ìš° ê²°ì œ?? ?Œë§? ? ˆì°¨ê? ì§„í–‰?˜ë©?, ê±°ëž˜ê°? ì²´ê²°?˜ì§? ?•Šê³? ê¸°ê°„?´ ì§??‚  ê²½ìš° ê²°ì œ?‚˜ ?Œë§? ì§„í–‰ ?—†?´ ?ž…ì°°ì´ ì¢…ë£Œ?©?‹ˆ?‹¤.', SYSDATE, 0);

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', 'ê±°ëž˜ ì§„í–‰ ?¼? •?´ ê¶ê¸ˆ?•´?š”', 'ê±°ëž˜ê°? ì²´ê²°?œ ?‹œ? ë¶??„° 48?‹œê°?(?¼?š”?¼Â·ê³µíœ´?¼ ? œ?™¸)?‚´?— ?ƒ?’ˆ?„ ë°œì†¡?•´?•¼ ?•˜ë©?, ?†µ?ƒ? ?œ¼ë¡? ë°œì†¡ ?›„ 1-2?¼ ?‚´?— KREAM ê²??ˆ˜?„¼?„°?— ?„ì°©í•©?‹ˆ?‹¤. ?‹¤ë§? ?•´?‹¹ ë°°ì†¡ê¸°ê°„?? ì½”ë¡œ?‚˜19, ëª…ì ˆ ?“±?˜ ?Š¹?ˆ˜ ê¸°ê°„?‹œ ?ƒë°°ì‚¬?˜ ë¬¼ëŸ‰?— ?”°?¼ ë³??™?  ?ˆ˜ ?žˆ?Šµ?‹ˆ?‹¤.<br>ê²??ˆ˜?„¼?„°?— ?„ì°©í•œ ?ƒ?’ˆ?? ?ž…ê³? ?™„ë£? ?›„ 3?˜?—…?¼ ?‚´?— ê²??ˆ˜ë¥? ì§„í–‰?•©?‹ˆ?‹¤. ê²??ˆ˜?— ?•©ê²©í•  ê²½ìš°, ?Œë§¤ìž?Š” ?µ?¼?— ?“±ë¡í•œ ê³„ì¢Œë¡? ?Œë§? ê¸ˆì•¡?´ ?ž…ê¸ˆë˜ë©?, êµ¬ë§¤?ž?Š” ?‹¹?¼ ?˜?Š” ?µ?¼?— ë°°ì†¡?´ ?‹œ?ž‘?©?‹ˆ?‹¤.', SYSDATE, 0);

INSERT INTO FAQ (FAQ_NO, MEMBER_ID, QUESTION, ANSWER, POSTDATE, STATE)
VALUES (FAQ_SEQ.NEXTVAL, 'admin', '?Œë§? ?˜?Š” êµ¬ë§¤?•˜ê³? ?‹¶?? ?ƒ?’ˆ?´ ?—†?–´?š”.', '?›?•˜?Š” ?ƒ?’ˆ?„ ? •?™•?žˆ ì°¾ê¸° ?œ„?•´?„œ ëª¨ë¸ë²ˆí˜¸ë¡? ê²??ƒ‰?„ ?•´ë³´ì‹œê¸? ë°”ëž?‹ˆ?‹¤. ê·¸ëž˜?„ ê²°ê³¼ê°? ?—†?„ ê²½ìš°, ê²??ƒ‰ ê²°ê³¼?˜ &#39;?ƒ?’ˆ ?“±ë¡? ?š”ì²??•˜ê¸?&#39; ë²„íŠ¼?„ ?ˆ„ë¥´ì‹œê±°ë‚˜, ?„œë¹„ìŠ¤ ?‚´ [1:1 ë¬¸ì˜ > ?¼ë°? > ?ƒ?’ˆ?“±ë¡ìš”ì²?]?œ¼ë¡? ?“±ë¡? ?š”ì²??•  ?ƒ?’ˆ?˜ ? •?™•?•œ ? •ë³?(ëª¨ë¸ë²ˆí˜¸, ë¸Œëžœ?“œ, ?ƒ?’ˆëª?)ë¥? ë³´ë‚´ì£¼ì‹œê¸? ë°”ëž?‹ˆ?‹¤. <br><br>?š”ì²? ?‹œ ?•´?‹¹ ?ƒ?’ˆ?˜ ë°•ìŠ¤?˜ ?¼ë²? ?Š¤?‹°ì»¤ë?? ì´¬ì˜?•´?„œ ì²¨ë??•´ì£¼ì‹œë©? ?ƒ?’ˆ ?“±ë¡ì— ?„???´ ?˜ê³ ìžˆ?Šµ?‹ˆ?‹¤.<br><br>* ?ƒ?’ˆ ?“±ë¡? ?š”ì²? ?‹œ, ?“±ë¡? ?—¬ë¶??Š” ë³„ë„ë¡? ?šŒ?‹  ?“œë¦¬ì? ?•Š?Šµ?‹ˆ?‹¤.', SYSDATE, 0);


--NOTICE

INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, 'admin',  '[ê³µì?] ë°˜ìŠ¤ ?˜¬?“œ?Š¤ì¿?(VN000D3HY28) ê±°ëž˜ ?¼?‹œ ì¤‘ì? ?•ˆ?‚´','<p>?•ˆ?…•?•˜?„¸?š”. SHOESFLY?ž…?‹ˆ?‹¤.</p><p>ìµœê·¼ ë°˜ìŠ¤ ?˜¬?“œ?Š¤ì¿?(VN000D3HY28) ?ƒ?’ˆ ê´?? ¨, ?‹¤?ˆ˜?˜ ê°??’ˆ?´ ?™•?¸?˜ê³? ?žˆ?–´ ?•ˆ? „?•œ ê±°ëž˜ë¥? ?œ„?•˜?—¬ ?•´?‹¹ ?ƒ?’ˆ?˜ ê±°ëž˜ë¥? ?¼?‹œ ì¤‘ì??•˜ê²? ?˜?—ˆ?Šµ?‹ˆ?‹¤.</p><p><strong>1. ?•´?‹¹ ?ƒ?’ˆ ? •ê°??’ˆ ?¬?¸?Š¸ë¥? ê³µê°œ?•©?‹ˆ?‹¤.</strong><br>?‚¬? „?— ê³ ê°?‹˜ê»? ?”¼?•´ê°? ë°œìƒ?•˜?Š” ?¼?´ ?—†?„ë¡? ?•˜ê¸? ?œ„?•´ ?‚´ë¶? ?…¼?˜ ?›„ ?‹¤?Œê³? ê°™ì´ ì£¼ìš” ? •ê°??’ˆ ?¬?¸?Š¸ë¥? ê³µê°œ?•˜?Š” ê²ƒìœ¼ë¡? ê²°ì •?•˜???Šµ?‹ˆ?‹¤.</p><ul><li>ë°˜ìŠ¤ ë¡œê³  ?ƒ?˜ ?°?Š¸ê°? ?‹¤ë¦?.</li><li>?‚´ë¶? ?ƒ?˜ ë¡œê³  ?°?Š¸?˜ ?˜•?ƒœê°? ê°??’ˆ?˜ ê²½ìš° ë§¤ë„?Ÿ½ì§? ?•Š?Œ.</li><li>?¸?†” ?Š¤?‹°ì»¤ì— ë°˜ìŠ¤ ë¡œê³ ê°? ?žˆ?œ¼?‚˜, ê°??’ˆ?˜ ê²½ìš° ?—†?Œ.</li><li>?ž?Œ¨ì¹˜ì˜ ?°?Š¸ê°? ? •?’ˆê³? ?‹¤ë¦?.</li><li>UV?¼?´?Š¸ ë°œê´‘?‹œ ?ž?Œ¨ì¹˜ì˜ ë°˜ì‘?´ ? •?’ˆê³? ?‹¤ë¦?.</li><li>ë°•ìŠ¤ ?¼ë²¨ì??˜ ?°?Š¸ê°? ? •?’ˆê³? ?‹¤ë¦?.</li><li>ë°•ìŠ¤?˜ êµ¬ì¡°?? ?˜•?ƒœê°? ? •?’ˆê³? ?‹¤ë¦?.</li><li>ê·¸ëž˜?”½ ?†ì§??˜ ?”„ë¦°íŒ…ê³? ?˜•?ƒœê°? ? •?’ˆê³? ?‹¤ë¦?.</li><li>?–´?¼?˜ ?Š¤?‹°ì¹? ?¼?¸?´ êµ´ê³¡?´ ?žˆ?œ¼?‚˜, ê°??’ˆ?˜ ê²½ìš° ?—†?Œ.</li></ul><p><strong>2.? •ê°??’ˆ ?Œ? •?? ?‹¤ë¬? ?ƒ?ƒœ?˜ ?ƒ?ƒœë¥? ê¸°ì??œ¼ë¡? ?•©?‹ˆ?‹¤.</strong><br>? •ê°??’ˆ ?Œ? •?? ê±°ëž˜ ì²´ê²° ?›„ SHOESFLYê²??ˆ˜?„¼?„°?— ?ž…ê³ ëœ ?‹¤ë¬? ?ƒ?’ˆ?˜ ?ƒ?ƒœë¥? ê¸°ì??œ¼ë¡? ?•˜ë©?, ?‹¤ë¬? ?ƒ?’ˆ?˜ ?ƒ?ƒœ?? ê´?ê³? ?—†?Š” ë°œë§¤ì²? ? •ë³?, ?œ ?†µê²½ë¡œ?? ê´?? ¨?œ ? •ë³´ë° ?œ ?†µ ê³¼ì • ì¤? ë°œìƒ?•˜?Š” ?„œë¥˜ë‚˜ ì¦ë¹™(?ˆ˜?ž…?†µê´??•„ì¦?, êµ¬ë§¤?˜?ˆ˜ì¦?, ê¸°í? ë³´ì¦?„œ ?“±)?“±?? ê²??ˆ˜ ë°? ?Œ? •?— ?žˆ?–´ ?˜?–¥?„ ì£¼ì? ?•Š?Šµ?‹ˆ?‹¤.(êµ¬ë§¤ ?˜?ˆ˜ì¦?, ë³´ì¦?„œ ?“± ?œ ?†µ ê³¼ì •?—?„œ ë°œìƒ?•œ ?„œë¥˜ë‚˜ ì¦ë¹™?˜ ?œ„ë³?ì¡°ëŠ” ê°ì • ???ƒ?— ?•´?‹¹?•˜ì§? ?•Š?Šµ?‹ˆ?‹¤.)</p><p>SHOESFLY?Š” ?˜„?ž¬ ê°??’ˆ?´ ë°œê²¬?˜ê³? ?žˆ?Š” ?™?¼ ?œ ?†µ ê²½ë¡œë¡? ?™?¼ ê°œì²´ë¥? ?‹¤?ˆ˜ ?™•ë³´í•˜?—¬ ì¤‘êµ­ ê±°ëž˜ ?”Œ?ž«?¼?¸ Poizon ë°? NICE?‚¬?— ? •ê°??’ˆ ê°ì •?„ ?˜ë¢? ?–‘ ?”Œ?ž«?¼ ëª¨ë‘?—?„œ ê°??’ˆ ?Œ? •?„ ë°›ì? ?‚¬?‹¤?´ ?žˆ?Šµ?‹ˆ?‹¤.</p><p>ì§??†? ?œ¼ë¡? êµ??™¸ ?”Œ?ž«?¼?“¤ê³? ê°??’ˆ ê°œì²´?“¤?— ???•œ ?‹¤ë¬? ? œê³? ë°? ?‹¹?‚¬?Œ? • ?†Œê²¬ì„ ê³µìœ ?•˜?—¬ ê°??’ˆ ê±°ëž˜ ê·¼ì ˆ?„ ?œ„?•´ ?…¸? ¥?•˜ê² ìŠµ?‹ˆ?‹¤.</p><p>ê°ì‚¬?•©?‹ˆ?‹¤.</p>', '2020/03/11', 0);

INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, 'admin',  '[ê³µì?] 2020?…„ 4?›” ?Œë§¤ìž ë°°ì†¡ë¹? ì§??› ?´ë²¤íŠ¸ ?•ˆ?‚´', '<p>?•ˆ?…•?•˜?„¸?š”. SHOESFLY?ž…?‹ˆ?‹¤.<br>4?›” ?Œë§¤ìž ë°°ì†¡ë¹? ì§??› ?´ë²¤íŠ¸ë¥? ?•ˆ?‚´?•´?“œë¦½ë‹ˆ?‹¤.</p><ul><li><p>???ƒ<br>?´ë²¤íŠ¸ ê¸°ê°„ ì¤? ê²??ˆ˜ ?•©ê²©í•œ ?Œë§¤ìž ëª¨ë‘<br>ê¸°ê°„ ì¤? ëª¨ë“  ê²??ˆ˜ ?•©ê²? ê±´ì„ ì£¼ë¬¸ ë³„ë¡œ ì§??›?•©?‹ˆ?‹¤.</p></li><li><p>ê¸°ê°„<br>-2020?…„ 4?›” 30?¼(ëª?)23:59:59ê¹Œì?<br>*ê²??ˆ˜ ?•©ê²? ?¼?‹œ ê¸°ì??´ë©?, ?˜ˆ?‚° ?†Œì§? ?‹œ ì¡°ê¸° ì¢…ë£Œ?  ?ˆ˜ ?žˆ?Šµ?‹ˆ?‹¤.</p></li><li><p>ì§?ê¸‰ë°©ë²?<br>ê²??ˆ˜ ?•©ê²? ?‹¤?Œ ?˜?—…?¼?— ? •?‚° ê¸ˆì•¡ ì§?ê¸? ?‹œ +4000?› ?¬?•¨?•˜?—¬ ? •?‚°<br>*ì§??›ê¸ˆì´ ?¬?•¨?œ ê¸ˆì•¡?œ¼ë¡? ? •?‚°?©?‹ˆ?‹¤.</p></li></ul><br><p>ê°ì‚¬?•©?‹ˆ?‹¤.</p><br><p><strong>?œ ?˜?‚¬?•­</strong><br><ul><li>ê²??ˆ˜ ?•©ê²? ?´?›„ ? •?ƒ? ?œ¼ë¡? ì¢…ë£Œ?˜ì§? ?•Š?? ?Œë§? ì£¼ë¬¸?? ? •?‚°?—?„œ ? œ?™¸?©?‹ˆ?‹¤.</li><li>ë³? ?´ë²¤íŠ¸?Š” ?‹¹?‚¬ ?‚¬? •?— ?˜?•˜?—¬ ë³?ê²½ë  ?ˆ˜ ?žˆ?Šµ?‹ˆ?‹¤.</li></ul>','2020-03-31', 0);

INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, 'admin',  '[ê³µì?] 5?›” 8?¼(ê¸?) ?ž„?‹œ ?œ´ë¬? ?•ˆ?‚´', '<p>?•ˆ?…•?•˜?„¸?š”. SHOESFLY?ž…?‹ˆ?‹¤.<br>?´ë²ˆì£¼ ê¸ˆìš”?¼?? ?‚¬ë¬´ì‹¤ ?‚´ë¶? ê³µì‚¬ë¡? ?¸?•˜?—¬ ?ž„?‹œ ?œ´ë¬´ì¼?ž…?‹ˆ?‹¤.<br><br></p><p><strong>?ž„?‹œ?œ´ë¬´ì¼ </strong>| 2021?…„ 5?›” 8?¼(ê¸?)<br><br><p>5?›” 11?¼(?›”) ë¶??„°?Š” ? •?ƒ ?´?š©?´ ê°??Š¥?•˜?˜¤?‹ˆ ì°¸ê³  ë°”ëž?‹ˆ?‹¤.<br>ê°ì‚¬?•©?‹ˆ?‹¤.</p>', '2020/05/04', 0);

INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, 'admin', '[ê³µì?] ?ƒë°? ?…¸ì¡? ?ŒŒ?—…?œ¼ë¡? ?¸?•œ ë°°ì†¡ ì§??—° ?•ˆ?‚´', '<p>?•ˆ?…•?•˜?„¸?š”. SHOESFLY?ž…?‹ˆ?‹¤.<br></p><p>?˜„?ž¬ ?ƒë°? ?…¸ì¡? ?ŒŒ?—… ?—¬?ŒŒë¡? ?¸?•˜?—¬ ?¼ë¶? ì§??—­?˜ ?ƒ?’ˆ ì§‘í•˜ ë°? ë°°ì†¡ì§??—°?´ ë°œìƒ?•˜ê³? ?žˆ?Šµ?‹ˆ?‹¤.<br>?´ë¡? ?¸?•˜?—¬ ?Œë§? ê±°ëž˜ ì²´ê²° ?›„, ë°œì†¡ ë§ˆê° ê¸°í•œ ?‚´?— ë°œì†¡?•˜???œ¼?‚˜ ì§‘í•˜ ê±°ë? ?˜?Š” ì§??—°?˜?–´ ê±°ëž˜ê°? ì·¨ì†Œ?˜?Š” ?ƒ?™©?´ ?˜ˆ?ƒ?©?‹ˆ?‹¤.</p><p>?´ë¯? ?¼ë¶? ë¬¸ì˜?•˜?‹  ê³ ê°?‹˜ê»? ?•ˆ?‚´?“œ? ¸?˜ ë°”ì? ê°™ì´ ?ƒë°°ì‚¬ ì§‘í•˜ê±°ë? ë°? ì§??—°?œ¼ë¡? ?¸?•´ ê±°ëž˜ê°? ì·¨ì†Œ ?  ê²½ìš°?—?Š” ?•„?ž˜?? ê°™ì´ ?Ž˜?„?‹° ì·¨ì†Œë¥? ?„???“œë¦¬ê³  ?žˆ?Œ?„ ?•ˆ?‚´?“œë¦½ë‹ˆ?‹¤.</p><ul><li>?Œ¨?„?‹° ì·¨ì†Œ???ƒ<br>?ƒë°°ì‚¬ ì§‘í•˜ ê±°ë? ?˜?Š” ì§??—°?œ¼ë¡? ?¸?•˜?—¬ ê±°ëž˜ ì·¨ì†Œ?œ ?Œë§¤ê±´</li><li>?Œ¨?„?‹° ì·¨ì†Œ ë°©ë²•<br><ul><li>?ƒë°°ì‚¬?˜ ê·?ì±…ìœ¼ë¡? ?¸?•œ ?‚¬ê³? ?‚´?š© ì¦ë¹™ ?žë£Œë?? ?Œ©?Š¤ë¡? ? œì¶?</li><li>ì¦ë¹™ ?žë£? ?™•?¸ ?›„, ?ƒë°°ì‚¬ ê³¼ì‹¤?´ ?¸? •?  ê²½ìš° ?Ž˜?„?‹° ì·¨ì†Œ</li></ul></li></ul><p>?•„?š¸?Ÿ¬ ?˜„?ž¬ ?ƒ?™©ê³? ê´?? ¨?•˜?—¬ ê²??ˆ˜ ?™„ë£? ?›„, ì¶œê³ ?˜?Š” ?ƒë°? ?—­?‹œ ?¼ë¶? ì§??—­?—?„œ ì§??—°?´ ë°œìƒ?•˜ê³? ?žˆ?–´ êµ¬ë§¤?‹œ ì°¸ê³  ë¶??ƒ?“œë¦½ë‹ˆ?‹¤.</p><p>SHOESFLY?—?„œ?Š” ?ƒë°°ì‚¬ ?ƒ?™©?„ ì§??† ëª¨ë‹ˆ?„°ë§? ?•˜ê³? ?žˆ?œ¼ë©?, ?ƒ?™©?— ?”°?¼ ? ? ˆ?žˆ ì¡°ì¹˜?•˜?„ë¡? ?•˜ê² ìŠµ?‹ˆ?‹¤.</p><p>ê°ì‚¬?•©?‹ˆ?‹¤.</p>', '2020/08/20', 0);

INSERT INTO NOTICE VALUES(NOTICE_SEQ.NEXTVAL, 'admin', '[ê³µì?] 2021?…„ 1?›” ?Œë§¤ìž ë°°ì†¡ë¹? ì§??› ?´ë²¤íŠ¸ ?•ˆ?‚´', '<p>?•ˆ?…•?•˜?„¸?š”. SHOESFLY?ž…?‹ˆ?‹¤.<br>?ƒˆ?•´ 1?›”?—?„ ?Œë§? ?ˆ˜?ˆ˜ë£?/ êµ¬ë§¤ ë°°ì†¡ë¹? ë¬´ë£Œ ?´ë²¤íŠ¸ê°? ì§„í–‰?©?‹ˆ?‹¤.</p><br><ul><li>ê¸°ê°„<br>2021?…„ 1?›” 31?¼ (?¼) 23:59:59ê¹Œì?(ì²´ê²° ?¼?‹œ ê¸°ì?)</li><li>?‚´?š©<br>?Œë§? ?‹œ ?ˆ˜?ˆ˜ë£? ë¬´ë£Œ/êµ¬ë§¤ ?‹œ ë°°ì†¡ë¹? ë¬´ë£Œ</li></ul><br><p>ê°ì‚¬?•©?‹ˆ?‹¤.</p>', '2021/01/02', 0);


-- PRODUCT ?ƒ˜?”Œ

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

-- INSERT : Jordan 1 Retro High OG University Blue ?‚¬?´ì¦? ë¶„ë¦¬
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 290);

-- INSERT : Jordan 1 Retro High OG Black Mocha ?‚¬?´ì¦? ë¶„ë¦¬
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG University Blue', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Jordan 1 Retro High OG Black Mocha', 290);

-- INSERT : Nike x Sacai Blazer Low Magma Orange ?‚¬?´ì¦? ë¶„ë¦¬
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike x Sacai Blazer Low Magma Orange', 290);

-- INSERT : Nike Dunk Low SP Veneer ?‚¬?´ì¦? ë¶„ë¦¬
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Nike Dunk Low SP Veneer', 290);

-- INSERT : New Balance 992 Made in USA Grey ?‚¬?´ì¦? ë¶„ë¦¬
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 992 Made in USA Grey', 290);

-- INSERT : New Balance 327 White Black ?‚¬?´ì¦? ë¶„ë¦¬
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'New Balance 327 White Black', 290);

-- INSERT : Adidas Yeezy Boost 350 V2 Zebra ?‚¬?´ì¦? ë¶„ë¦¬
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 230);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 240);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 250);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 260);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 270);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 280);
INSERT INTO PRODUCT_DETAIL VALUES (PRODUCT_DETAIL_SEQ.NEXTVAL, 'Adidas Yeezy Boost 350 V2 Zebra', 290);

-- INSERT : Adidas Yeezy Boost 700 V2 Cream ?‚¬?´ì¦? ë¶„ë¦¬
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