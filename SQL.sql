DROP TABLE "MEMBER" CASCADE CONSTRAINTS;
DROP TABLE "PRODUCT" CASCADE CONSTRAINTS;
DROP TABLE "NTPC" CASCADE CONSTRAINTS;
DROP TABLE "NTPR" CASCADE CONSTRAINTS;
DROP TABLE "NTRC" CASCADE CONSTRAINTS;
DROP TABLE "NTRI" CASCADE CONSTRAINTS;
DROP TABLE "NTRR" CASCADE CONSTRAINTS;
DROP TABLE "NTCC" CASCADE CONSTRAINTS;
DROP TABLE "NTCI" CASCADE CONSTRAINTS;
DROP TABLE "NTCR" CASCADE CONSTRAINTS;
DROP TABLE "NTCL" CASCADE CONSTRAINTS;
DROP TABLE "NTPI" CASCADE CONSTRAINTS;
DROP TABLE "EV_CONTENT" CASCADE CONSTRAINTS;
DROP TABLE "CR_RECIPE_CONTENT_LIKE" CASCADE CONSTRAINTS;
DROP TABLE "QNA" CASCADE CONSTRAINTS;
DROP TABLE "COMMONQNA" CASCADE CONSTRAINTS;
DROP TABLE "NOTICE" CASCADE CONSTRAINTS;
DROP TABLE "QNA_RECOMMENT" CASCADE CONSTRAINTS;
DROP TABLE "PRODUCT_REVIEW" CASCADE CONSTRAINTS;
DROP TABLE "PRODUCT_REVIEW_IMAGE" CASCADE CONSTRAINTS;
DROP TABLE "BASKET_ITEM" CASCADE CONSTRAINTS;
DROP TABLE "ORDERED_PRODUCT" CASCADE CONSTRAINTS;
DROP TABLE "NTPL" CASCADE CONSTRAINTS;
DROP TABLE "NTRL" CASCADE CONSTRAINTS;
DROP TABLE "MBTI" CASCADE CONSTRAINTS;
DROP TABLE "DELIVERY" CASCADE CONSTRAINTS;
DROP TABLE "PAYMENT" CASCADE CONSTRAINTS;
DROP TABLE "DETAIL_IMAGE" CASCADE CONSTRAINTS;
DROP TABLE "MEMBERAGREEMENT" CASCADE CONSTRAINTS;
DROP TABLE "AGREEMENT_HISTORY" CASCADE CONSTRAINTS;
DROP TABLE "CR_RECIPE_RECOMMENT" CASCADE CONSTRAINTS;
DROP TABLE "ORDER_ORDER" CASCADE CONSTRAINTS;
DROP TABLE "CR_RECIPE_CONTENT" CASCADE CONSTRAINTS;
DROP TABLE "CR_RECIPE_CONTENT_IMAGE" CASCADE CONSTRAINTS;
DROP TABLE "EV_CONTENT_IMAGE" CASCADE CONSTRAINTS;




CREATE TABLE "MEMBER" (
	"MEMBER_ID"	VARCHAR2(20)		NOT NULL,
	"MEMBER_PASSWORD"	VARCHAR2(20)		NOT NULL,
	"MEMBER_NAME"	VARCHAR2(20)		NOT NULL,
	"MEMBER_EMAIL"	VARCHAR2(50)		NOT NULL,
	"MEMBER_PHONE"	VARCHAR2(20)		NOT NULL,
	"MEMBER_ADDRESS"	VARCHAR2(200)		NOT NULL,
	"MEMBER_GENDER"	CHAR(1)		NOT NULL,
	"MEMBER_BIRTHOFDATE"	DATE		NOT NULL
);

COMMENT ON COLUMN "MEMBER"."MEMBER_ADDRESS" IS '67자 미만';

COMMENT ON COLUMN "MEMBER"."MEMBER_GENDER" IS '"M", "F"';

CREATE TABLE "PRODUCT" (
	"P_ID"	VARCHAR2(20)		NOT NULL,
	"P_NAME"	VARCHAR2(100)		NOT NULL,
	"P_CATEGORY"	NUMBER		NOT NULL,
	"P_PRICE"	NUMBER		NOT NULL,
	"P_SELLAMOUNT"	NUMBER		NOT NULL,
	"P_WEIGHT"	NUMBER		NULL,
	"P_CALORIE"	NUMBER		NULL,
	"P_FLAVOR"	VARCHAR2(20)		NULL,
	"P_POSTDATE"	TIMESTAMP		NOT NULL,
	"P_SALECHECK"	CHAR(1)		NOT NULL,
	"P_DETAIL"	VARCHAR2(900)		NOT NULL
);

COMMENT ON COLUMN "PRODUCT"."P_NAME" IS '34자 미만';

COMMENT ON COLUMN "PRODUCT"."P_CATEGORY" IS '1. 한식, 2.중식, 3.일식, 4.양식, 5.동남아, 6.기타';

COMMENT ON COLUMN "PRODUCT"."P_SALECHECK" IS '"Y", "N"';

CREATE TABLE "NTPC" (
	"PB_NO"	NUMBER		NOT NULL,
	"PB_CONCEPT"	NUMBER		NOT NULL,
	"PB_TITLE"	VARCHAR2(60)		NOT NULL,
	"PB_CONTENT"	VARCHAR2(900)		NOT NULL,
	"PB_DATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"MEMBER_ID"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "NTPC"."PB_CONCEPT" IS '1.생일 2.캠핑 3.홈파티 4.안주';

COMMENT ON COLUMN "NTPC"."PB_TITLE" IS '20자 미만';

COMMENT ON COLUMN "NTPC"."PB_CONTENT" IS '300자 미만';

CREATE TABLE "NTPR" (
	"PR_NO"	NUMBER		NOT NULL,
	"PR_CONTENT"	VARCHAR2(300)		NOT NULL,
	"PR_DATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"PB_NO"	NUMBER		NOT NULL,
	"MEMBER_ID"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "NTPR"."PR_CONTENT" IS '100자 미만';

CREATE TABLE "NTRC" (
	"RB_NO"	NUMBER		NOT NULL,
	"RB_CONCEPT"	NUMBER		NOT NULL,
	"RB_TITLE"	VARCHAR2(60)		NOT NULL,
	"RB_CONTENT"	VARCHAR2(900)		NOT NULL,
	"RB_DATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"MEMBER_ID"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "NTRC"."RB_CONCEPT" IS '1. 한식, 2.중식, 3.일식, 4.양식';

COMMENT ON COLUMN "NTRC"."RB_TITLE" IS '20자 미만';

COMMENT ON COLUMN "NTRC"."RB_CONTENT" IS '300자 미만';

CREATE TABLE "NTRI" (
	"RI_NO"	NUMBER		NOT NULL,
	"RI_FILE"	VARCHAR2(300)		NOT NULL,
	"RB_NO"	NUMBER		NOT NULL
);

CREATE TABLE "NTRR" (
	"RR_NO"	NUMBER		NOT NULL,
	"RR_CONTENT"	VARCHAR2(300)		NOT NULL,
	"RR_DATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"RB_NO"	NUMBER		NOT NULL,
	"MEMBER_ID"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "NTRR"."RR_CONTENT" IS '100자 미만';

CREATE TABLE "NTCC" (
	"CB_NO"	NUMBER		NOT NULL,
	"CB_TITLE"	VARCHAR2(60)		NOT NULL,
	"CB_CONTENT"	VARCHAR2(900)		NOT NULL,
	"CB_DATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"MEMBER_ID"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "NTCC"."CB_TITLE" IS '20자 미만';

COMMENT ON COLUMN "NTCC"."CB_CONTENT" IS '300자 미만';

CREATE TABLE "NTCI" (
	"CI_NO"	NUMBER		NOT NULL,
	"CI_FILE"	VARCHAR2(300)		NOT NULL,
	"CB_NO"	NUMBER		NOT NULL
);

CREATE TABLE "NTCR" (
	"CR_NO"	NUMBER		NOT NULL,
	"CR_CONTENT"	VARCHAR2(300)		NOT NULL,
	"CR_DATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"CB_NO"	NUMBER		NOT NULL,
	"MEMBER_ID"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "NTCR"."CR_CONTENT" IS '100자 미만';

CREATE TABLE "CR_RECIPE_RECOMMENT" (
	"CRRERECOMMENT_NO"	NUMBER		NOT NULL,
	"CRRERECOMMENT_POSTDATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"CRRERECOMMENT_CONTENT"	varchar2(300)		NOT NULL,
	"MEMBER_ID"	VARCHAR2(20)		NOT NULL,
	"CRRECONTENT_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "CR_RECIPE_RECOMMENT"."CRRERECOMMENT_CONTENT" IS '100자 미만';

CREATE TABLE "ORDER_ORDER" (
	"ORDER_NUMBER"	VARCHAR2(20)		NOT NULL,
	"ORDER_CONTACT"	NUMBER		NOT NULL,
	"ORDER_REQUEST"	VARCHAR2(150)		NOT NULL,
	"ORDER_DATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"ORDER_STATUS"	VARCHAR2(30)		NULL,
	"PAY_TOTAL"	NUMBER		NOT NULL,
	"PAY_METHOD"	NUMBER		NOT NULL,
	"MEMBER_ID"	VARCHAR2(20)		NOT NULL,
	"ORDER_DELIVERY"	VARCHAR2(100)		NOT NULL
);

COMMENT ON COLUMN "ORDER_ORDER"."ORDER_REQUEST" IS '51자 미만';

CREATE TABLE "NTCL" (
	"MEMBER_ID"	VARCHAR2(20)		NOT NULL,
	"CB_NO"	NUMBER		NOT NULL
);

CREATE TABLE "NTPI" (
	"PI_NO"	NUMBER		NOT NULL,
	"PI_FILE"	VARCHAR2(300)		NOT NULL,
	"PB_NO"	NUMBER		NOT NULL
);

CREATE TABLE "EV_CONTENT" (
	"E_NO"	NUMBER		NOT NULL,
	"E_POSTDATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"E_TITLE"	VARCHAR2(60)		NOT NULL,
	"E_CONTENT"	VARCHAR2(900)		NOT NULL,
	"E_STARTDATE"	DATE		NOT NULL,
	"E_ENDDATE"	DATE		NOT NULL
);

COMMENT ON COLUMN "EV_CONTENT"."E_TITLE" IS '20자 미만';

COMMENT ON COLUMN "EV_CONTENT"."E_CONTENT" IS '300자 미만';

CREATE TABLE "CR_RECIPE_CONTENT" (
	"CRRECONTENT_NO"	NUMBER		NOT NULL,
	"CRRECONTENT_POSTDATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"CRRECONTENT_TITLE"	VARCHAR2(60)		NOT NULL,
	"CRRECONTENT_CONTENT"	VARCHAR2(900)		NOT NULL
);

COMMENT ON COLUMN "CR_RECIPE_CONTENT"."CRRECONTENT_TITLE" IS '20자 미만';

COMMENT ON COLUMN "CR_RECIPE_CONTENT"."CRRECONTENT_CONTENT" IS '300자 미만';

CREATE TABLE "CR_RECIPE_CONTENT_LIKE" (
	"CRRECONTENT_NO"	NUMBER		NOT NULL,
	"MEMBER_ID"	VARCHAR2(20)		NOT NULL
);

CREATE TABLE "QNA" (
	"QNA_NO"	NUMBER		NOT NULL,
	"QNA_POSTDATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"QNA_TITLE"	VARCHAR2(60)		NOT NULL,
	"QNA_CONTENT"	VARCHAR2(900)		NOT NULL,
	"MEMBER_ID"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "QNA"."QNA_TITLE" IS '20자 미만';

COMMENT ON COLUMN "QNA"."QNA_CONTENT" IS '300자 미만';

CREATE TABLE "COMMONQNA" (
	"COMMONQNA_NO"	NUMBER		NOT NULL,
	"COMMONQNA_POSTDATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"COMMONQNA_TITLE"	VARCHAR2(60)		NOT NULL,
	"COMMONQNA__CONTENT"	VARCHAR2(900)		NOT NULL
);

COMMENT ON COLUMN "COMMONQNA"."COMMONQNA_TITLE" IS '20자 미만';

COMMENT ON COLUMN "COMMONQNA"."COMMONQNA__CONTENT" IS '300자 미만';

CREATE TABLE "NOTICE" (
	"NOTICE_NO"	NUMBER		NOT NULL,
	"NOTICE_POSTDATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"NOTICE_TITLE"	VARCHAR2(60)		NOT NULL,
	"NOTICE_CONTENT"	VARCHAR2(900)		NOT NULL
);

COMMENT ON COLUMN "NOTICE"."NOTICE_TITLE" IS '20자 미만';

COMMENT ON COLUMN "NOTICE"."NOTICE_CONTENT" IS '300자 미만';

CREATE TABLE "QNA_RECOMMENT" (
	"QNARECOMMENT_NO"	NUMBER		NOT NULL,
	"QNARECOMMENT_POSTDATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"QNARECOMMENT_CONTENT"	VARCHAR2(300)		NOT NULL,
	"QNA_NO"	NUMBER		NOT NULL
);

COMMENT ON COLUMN "QNA_RECOMMENT"."QNARECOMMENT_CONTENT" IS '100자 미만';

CREATE TABLE "PRODUCT_REVIEW" (
	"PRODUCTREVIEW_NO"	NUMBER		NOT NULL,
	"PRODUCTREVIEW_POSTDATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"PRODUCTREVIEW_CONTENT"	VARCHAR2(300)		NOT NULL,
	"MEMBER_ID"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "PRODUCT_REVIEW"."PRODUCTREVIEW_CONTENT" IS '100자 미만';

CREATE TABLE "PRODUCT_REVIEW_IMAGE" (
	"PRODUCTREVIEW_IMAGENO"	NUMBER		NOT NULL,
	"PRODUCTREVIEW_IMAGEPOSITION"	VARCHAR2(300)		NOT NULL,
	"PRODUCTREVIEW_NO"	NUMBER		NOT NULL
);

CREATE TABLE "BASKET_ITEM" (
	"P_ID"	VARCHAR2(20)		NOT NULL,
	"MEMBER_ID"	VARCHAR2(20)		NOT NULL,
	"BASKETITEM_AMOUNT"	NUMBER		NOT NULL
);

CREATE TABLE "ORDERED_PRODUCT" (
	"P_ID"	VARCHAR2(20)		NOT NULL,
	"ORDER_NUMBER"	VARCHAR2(20)		NOT NULL,
	"ORDEREDPRODUCT_AMOUNT"	NUMBER		NOT NULL
);

CREATE TABLE "NTPL" (
	"MEMBER_ID"	VARCHAR2(20)		NOT NULL,
	"PB_NO"	NUMBER		NOT NULL
);

CREATE TABLE "NTRL" (
	"MEMBER_ID"	VARCHAR2(20)		NOT NULL,
	"RB_NO"	NUMBER		NOT NULL
);

CREATE TABLE "CR_RECIPE_CONTENT_IMAGE" (
	"CRRECIPECOTENTIMAGE_NO"	NUMBER		NOT NULL,
	"CRRECONTENT_NO"	NUMBER		NOT NULL,
	"CRRECONTENTIMAGE_LOCATION"	VARCHAR2(300)		NOT NULL
);

CREATE TABLE "MBTI" (
	"MBTI_TYPE"	VARCHAR2(100)		NOT NULL,
	"MEMBER_ID"	VARCHAR2(20)		NOT NULL
);

CREATE TABLE "DELIVERY" (
	"ORDER_NUMBER"	VARCHAR2(20)		NOT NULL,
	"D_DATE"	DATE		NOT NULL,
	"D_COMPANY"	VARCHAR2(100)		NOT NULL,
	"D_NUMBER"	NUMBER		NOT NULL,
	"D_STATUS"	CHAR(4)		NOT NULL,
	"D_TYPE"	VARCHAR2(50)		NOT NULL
);

COMMENT ON COLUMN "DELIVERY"."D_STATUS" IS '"1 - 발송", "2 - 배송 중", "3- 배송 완료"';

CREATE TABLE "PAYMENT" (
	"PAY_NUMBER"	NUMBER		NOT NULL,
	"ORDER_NUMBER"	VARCHAR2(20)		NOT NULL,
	"PAY_NAME"	VARCHAR2(50)		NOT NULL,
	"PAY_DATE"	TIMESTAMP	DEFAULT SYSTIMESTAMP	NOT NULL,
	"PAY_TOTAL"	NUMBER		NOT NULL,
	"PAY_METHOD"	NUMBER		NOT NULL,
	"MEMBER_ID"	VARCHAR2(20)		NOT NULL
);

COMMENT ON COLUMN "PAYMENT"."PAY_METHOD" IS '1. 카드 2. 무통장입금 3. 실시간계좌이체';

CREATE TABLE "DETAIL_IMAGE" (
	"P_ID"	VARCHAR2(20)		NOT NULL,
	"D_FILE"	VARCHAR2(300)		NOT NULL
);

CREATE TABLE "MEMBERAGREEMENT" (
	"MA_ID"	VARCHAR2(20)		NOT NULL,
	"MA_CONTENT"	VARCHAR2(900)		NOT NULL,
	"MA_APPLYDATE"	TIMESTAMP		NOT NULL,
	"MA_POSTDATE"	TIMESTAMP		NOT NULL,
	"MA_REQUIRED"	CHAR(1)		NOT NULL
);

COMMENT ON COLUMN "MEMBERAGREEMENT"."MA_REQUIRED" IS '"Y", "N"';

CREATE TABLE "AGREEMENT_HISTORY" (
	"MEMBER_ID"	VARCHAR2(20)		NOT NULL,
	"MA_ID"	VARCHAR2(20)		NOT NULL,
	"AH_AGREE"	CHAR(1)		NOT NULL,
	"AH_AGREEDATE"	TIMESTAMP		NOT NULL
);

COMMENT ON COLUMN "AGREEMENT_HISTORY"."AH_AGREE" IS '"Y", "N"';

CREATE TABLE "EV_CONTENT_IMAGE" (
	"EVC_IMAGENO"	NUMBER		NOT NULL,
	"E_NO"	NUMBER		NOT NULL,
	"EVC_IMAGEROUTE"	VARCHAR2(300)		NOT NULL
);

ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
	"MEMBER_ID"
);

ALTER TABLE "PRODUCT" ADD CONSTRAINT "PK_PRODUCT" PRIMARY KEY (
	"P_ID"
);

ALTER TABLE "NTPC" ADD CONSTRAINT "PK_NTPC" PRIMARY KEY (
	"PB_NO"
);

ALTER TABLE "NTPR" ADD CONSTRAINT "PK_NTPR" PRIMARY KEY (
	"PR_NO"
);

ALTER TABLE "NTRC" ADD CONSTRAINT "PK_NTRC" PRIMARY KEY (
	"RB_NO"
);

ALTER TABLE "NTRI" ADD CONSTRAINT "PK_NTRI" PRIMARY KEY (
	"RI_NO"
);

ALTER TABLE "NTRR" ADD CONSTRAINT "PK_NTRR" PRIMARY KEY (
	"RR_NO"
);

ALTER TABLE "NTCC" ADD CONSTRAINT "PK_NTCC" PRIMARY KEY (
	"CB_NO"
);

ALTER TABLE "NTCI" ADD CONSTRAINT "PK_NTCI" PRIMARY KEY (
	"CI_NO"
);

ALTER TABLE "NTCR" ADD CONSTRAINT "PK_NTCR" PRIMARY KEY (
	"CR_NO"
);

ALTER TABLE "CR_RECIPE_RECOMMENT" ADD CONSTRAINT "PK_CR_RECIPE_RECOMMENT" PRIMARY KEY (
	"CRRERECOMMENT_NO"
);

ALTER TABLE "ORDER_ORDER" ADD CONSTRAINT "PK_ORDER_ORDER" PRIMARY KEY (
	"ORDER_NUMBER"
);

ALTER TABLE "NTCL" ADD CONSTRAINT "PK_NTCL" PRIMARY KEY (
	"MEMBER_ID",
	"CB_NO"
);

ALTER TABLE "NTPI" ADD CONSTRAINT "PK_NTPI" PRIMARY KEY (
	"PI_NO"
);

ALTER TABLE "EV_CONTENT" ADD CONSTRAINT "PK_EV_CONTENT" PRIMARY KEY (
	"E_NO"
);

ALTER TABLE "CR_RECIPE_CONTENT" ADD CONSTRAINT "PK_CR_RECIPE_CONTENT" PRIMARY KEY (
	"CRRECONTENT_NO"
);

ALTER TABLE "CR_RECIPE_CONTENT_LIKE" ADD CONSTRAINT "PK_CR_RECIPE_CONTENT_LIKE" PRIMARY KEY (
	"CRRECONTENT_NO",
	"MEMBER_ID"
);

ALTER TABLE "QNA" ADD CONSTRAINT "PK_QNA" PRIMARY KEY (
	"QNA_NO"
);

ALTER TABLE "COMMONQNA" ADD CONSTRAINT "PK_COMMONQNA" PRIMARY KEY (
	"COMMONQNA_NO"
);

ALTER TABLE "NOTICE" ADD CONSTRAINT "PK_NOTICE" PRIMARY KEY (
	"NOTICE_NO"
);

ALTER TABLE "QNA_RECOMMENT" ADD CONSTRAINT "PK_QNA_RECOMMENT" PRIMARY KEY (
	"QNARECOMMENT_NO"
);

ALTER TABLE "PRODUCT_REVIEW" ADD CONSTRAINT "PK_PRODUCT_REVIEW" PRIMARY KEY (
	"PRODUCTREVIEW_NO"
);

ALTER TABLE "PRODUCT_REVIEW_IMAGE" ADD CONSTRAINT "PK_PRODUCT_REVIEW_IMAGE" PRIMARY KEY (
	"PRODUCTREVIEW_IMAGENO"
);

ALTER TABLE "BASKET_ITEM" ADD CONSTRAINT "PK_BASKET_ITEM" PRIMARY KEY (
	"P_ID",
	"MEMBER_ID"
);

ALTER TABLE "NTPL" ADD CONSTRAINT "PK_NTPL" PRIMARY KEY (
	"MEMBER_ID",
	"PB_NO"
);

ALTER TABLE "NTRL" ADD CONSTRAINT "PK_NTRL" PRIMARY KEY (
	"MEMBER_ID",
	"RB_NO"
);

ALTER TABLE "CR_RECIPE_CONTENT_IMAGE" ADD CONSTRAINT "PK_CR_RECIPE_CONTENT_IMAGE" PRIMARY KEY (
	"CRRECIPECOTENTIMAGE_NO",
	"CRRECONTENT_NO"
);

ALTER TABLE "MBTI" ADD CONSTRAINT "PK_MBTI" PRIMARY KEY (
	"MBTI_TYPE",
	"MEMBER_ID"
);

ALTER TABLE "DELIVERY" ADD CONSTRAINT "PK_DELIVERY" PRIMARY KEY (
	"ORDER_NUMBER"
);

ALTER TABLE "PAYMENT" ADD CONSTRAINT "PK_PAYMENT" PRIMARY KEY (
	"PAY_NUMBER",
	"ORDER_NUMBER"
);

ALTER TABLE "MEMBERAGREEMENT" ADD CONSTRAINT "PK_MEMBERAGREEMENT" PRIMARY KEY (
	"MA_ID"
);

ALTER TABLE "AGREEMENT_HISTORY" ADD CONSTRAINT "PK_AGREEMENT_HISTORY" PRIMARY KEY (
	"MEMBER_ID",
	"MA_ID"
);

ALTER TABLE "EV_CONTENT_IMAGE" ADD CONSTRAINT "PK_EV_CONTENT_IMAGE" PRIMARY KEY (
	"EVC_IMAGENO"
);

ALTER TABLE "NTPC" ADD CONSTRAINT "FK_MEMBER_TO_NTPC_1" FOREIGN KEY (
	"MEMBER_ID"
)
REFERENCES "MEMBER" (
	"MEMBER_ID"
);

ALTER TABLE "NTPR" ADD CONSTRAINT "FK_NTPC_TO_NTPR_1" FOREIGN KEY (
	"PB_NO"
)
REFERENCES "NTPC" (
	"PB_NO"
);

ALTER TABLE "NTPR" ADD CONSTRAINT "FK_MEMBER_TO_NTPR_1" FOREIGN KEY (
	"MEMBER_ID"
)
REFERENCES "MEMBER" (
	"MEMBER_ID"
);

ALTER TABLE "NTRC" ADD CONSTRAINT "FK_MEMBER_TO_NTRC_1" FOREIGN KEY (
	"MEMBER_ID"
)
REFERENCES "MEMBER" (
	"MEMBER_ID"
);

ALTER TABLE "NTRI" ADD CONSTRAINT "FK_NTRC_TO_NTRI_1" FOREIGN KEY (
	"RB_NO"
)
REFERENCES "NTRC" (
	"RB_NO"
);

ALTER TABLE "NTRR" ADD CONSTRAINT "FK_NTRC_TO_NTRR_1" FOREIGN KEY (
	"RB_NO"
)
REFERENCES "NTRC" (
	"RB_NO"
);

ALTER TABLE "NTRR" ADD CONSTRAINT "FK_MEMBER_TO_NTRR_1" FOREIGN KEY (
	"MEMBER_ID"
)
REFERENCES "MEMBER" (
	"MEMBER_ID"
);

ALTER TABLE "NTCC" ADD CONSTRAINT "FK_MEMBER_TO_NTCC_1" FOREIGN KEY (
	"MEMBER_ID"
)
REFERENCES "MEMBER" (
	"MEMBER_ID"
);

ALTER TABLE "NTCI" ADD CONSTRAINT "FK_NTCC_TO_NTCI_1" FOREIGN KEY (
	"CB_NO"
)
REFERENCES "NTCC" (
	"CB_NO"
);

ALTER TABLE "NTCR" ADD CONSTRAINT "FK_NTCC_TO_NTCR_1" FOREIGN KEY (
	"CB_NO"
)
REFERENCES "NTCC" (
	"CB_NO"
);

ALTER TABLE "NTCR" ADD CONSTRAINT "FK_MEMBER_TO_NTCR_1" FOREIGN KEY (
	"MEMBER_ID"
)
REFERENCES "MEMBER" (
	"MEMBER_ID"
);

ALTER TABLE "CR_RECIPE_RECOMMENT" ADD CONSTRAINT "FK_MEM_RERECOMMENT_1" FOREIGN KEY (
	"MEMBER_ID"
)
REFERENCES "MEMBER" (
	"MEMBER_ID"
);

ALTER TABLE "CR_RECIPE_RECOMMENT" ADD CONSTRAINT "FK_RECONTENT_RERECOMMENT_1" FOREIGN KEY (
	"CRRECONTENT_NO"
)
REFERENCES "CR_RECIPE_CONTENT" (
	"CRRECONTENT_NO"
);

ALTER TABLE "ORDER_ORDER" ADD CONSTRAINT "FK_MEMBER_TO_ORDER_ORDER_1" FOREIGN KEY (
	"MEMBER_ID"
)
REFERENCES "MEMBER" (
	"MEMBER_ID"
);

ALTER TABLE "NTCL" ADD CONSTRAINT "FK_MEMBER_TO_NTCL_1" FOREIGN KEY (
	"MEMBER_ID"
)
REFERENCES "MEMBER" (
	"MEMBER_ID"
);

ALTER TABLE "NTCL" ADD CONSTRAINT "FK_NTCC_TO_NTCL_1" FOREIGN KEY (
	"CB_NO"
)
REFERENCES "NTCC" (
	"CB_NO"
);

ALTER TABLE "NTPI" ADD CONSTRAINT "FK_NTPC_TO_NTPI_1" FOREIGN KEY (
	"PB_NO"
)
REFERENCES "NTPC" (
	"PB_NO"
);

ALTER TABLE "CR_RECIPE_CONTENT_LIKE" ADD CONSTRAINT "FK_RECONTENT_RECONLIKE_1" FOREIGN KEY (
	"CRRECONTENT_NO"
)
REFERENCES "CR_RECIPE_CONTENT" (
	"CRRECONTENT_NO"
);

ALTER TABLE "CR_RECIPE_CONTENT_LIKE" ADD CONSTRAINT "FK_MEM_RECONLIKE_1" FOREIGN KEY (
	"MEMBER_ID"
)
REFERENCES "MEMBER" (
	"MEMBER_ID"
);

ALTER TABLE "QNA" ADD CONSTRAINT "FK_MEMBER_TO_QNA_1" FOREIGN KEY (
	"MEMBER_ID"
)
REFERENCES "MEMBER" (
	"MEMBER_ID"
);

ALTER TABLE "QNA_RECOMMENT" ADD CONSTRAINT "FK_QNA_TO_QNA_RECOMMENT_1" FOREIGN KEY (
	"QNA_NO"
)
REFERENCES "QNA" (
	"QNA_NO"
);

ALTER TABLE "PRODUCT_REVIEW" ADD CONSTRAINT "FK_MEMBER_TO_PRODUCT_REVIEW_1" FOREIGN KEY (
	"MEMBER_ID"
)
REFERENCES "MEMBER" (
	"MEMBER_ID"
);

ALTER TABLE "PRODUCT_REVIEW_IMAGE" ADD CONSTRAINT "FK_PROREVIEW_PROREVIMAGE_1" FOREIGN KEY (
	"PRODUCTREVIEW_NO"
)
REFERENCES "PRODUCT_REVIEW" (
	"PRODUCTREVIEW_NO"
);

ALTER TABLE "BASKET_ITEM" ADD CONSTRAINT "FK_PRODUCT_TO_BASKET_ITEM_1" FOREIGN KEY (
	"P_ID"
)
REFERENCES "PRODUCT" (
	"P_ID"
);

ALTER TABLE "BASKET_ITEM" ADD CONSTRAINT "FK_MEMBER_TO_BASKET_ITEM_1" FOREIGN KEY (
	"MEMBER_ID"
)
REFERENCES "MEMBER" (
	"MEMBER_ID"
);

ALTER TABLE "ORDERED_PRODUCT" ADD CONSTRAINT "FK_PRO_ORDPRODUCT_1" FOREIGN KEY (
	"P_ID"
)
REFERENCES "PRODUCT" (
	"P_ID"
);

ALTER TABLE "ORDERED_PRODUCT" ADD CONSTRAINT "FK_ORDORDER_ORDPRODUCT_1" FOREIGN KEY (
	"ORDER_NUMBER"
)
REFERENCES "ORDER_ORDER" (
	"ORDER_NUMBER"
);

ALTER TABLE "NTPL" ADD CONSTRAINT "FK_MEMBER_TO_NTPL_1" FOREIGN KEY (
	"MEMBER_ID"
)
REFERENCES "MEMBER" (
	"MEMBER_ID"
);

ALTER TABLE "NTPL" ADD CONSTRAINT "FK_NTPC_TO_NTPL_1" FOREIGN KEY (
	"PB_NO"
)
REFERENCES "NTPC" (
	"PB_NO"
);

ALTER TABLE "NTRL" ADD CONSTRAINT "FK_MEMBER_TO_NTRL_1" FOREIGN KEY (
	"MEMBER_ID"
)
REFERENCES "MEMBER" (
	"MEMBER_ID"
);

ALTER TABLE "NTRL" ADD CONSTRAINT "FK_NTRC_TO_NTRL_1" FOREIGN KEY (
	"RB_NO"
)
REFERENCES "NTRC" (
	"RB_NO"
);

ALTER TABLE "CR_RECIPE_CONTENT_IMAGE" ADD CONSTRAINT "FK_RECONTENT_RECONIMAGE_1" FOREIGN KEY (
	"CRRECONTENT_NO"
)
REFERENCES "CR_RECIPE_CONTENT" (
	"CRRECONTENT_NO"
);

ALTER TABLE "MBTI" ADD CONSTRAINT "FK_MEMBER_TO_MBTI_1" FOREIGN KEY (
	"MEMBER_ID"
)
REFERENCES "MEMBER" (
	"MEMBER_ID"
);

ALTER TABLE "DELIVERY" ADD CONSTRAINT "FK_ORDER_ORDER_TO_DELIVERY_1" FOREIGN KEY (
	"ORDER_NUMBER"
)
REFERENCES "ORDER_ORDER" (
	"ORDER_NUMBER"
);

ALTER TABLE "PAYMENT" ADD CONSTRAINT "FK_ORDER_ORDER_TO_PAYMENT_1" FOREIGN KEY (
	"ORDER_NUMBER"
)
REFERENCES "ORDER_ORDER" (
	"ORDER_NUMBER"
);

ALTER TABLE "PAYMENT" ADD CONSTRAINT "FK_MEMBER_TO_PAYMENT_1" FOREIGN KEY (
	"MEMBER_ID"
)
REFERENCES "MEMBER" (
	"MEMBER_ID"
);

ALTER TABLE "DETAIL_IMAGE" ADD CONSTRAINT "FK_PRODUCT_TO_DETAIL_IMAGE_1" FOREIGN KEY (
	"P_ID"
)
REFERENCES "PRODUCT" (
	"P_ID"
);

ALTER TABLE "AGREEMENT_HISTORY" ADD CONSTRAINT "FK_MEM_AGRHIS_1" FOREIGN KEY (
	"MEMBER_ID"
)
REFERENCES "MEMBER" (
	"MEMBER_ID"
);

ALTER TABLE "AGREEMENT_HISTORY" ADD CONSTRAINT "FK_MEMAGR_AGRHIS_1" FOREIGN KEY (
	"MA_ID"
)
REFERENCES "MEMBERAGREEMENT" (
	"MA_ID"
);

ALTER TABLE "EV_CONTENT_IMAGE" ADD CONSTRAINT "FK_EVCON_EVCONIMG_1" FOREIGN KEY (
	"E_NO"
)
REFERENCES "EV_CONTENT" (
	"E_NO"
);

