INSERT ALL
    INTO A_ROOM (ID, IDHOTEL, IDROOMTYPE, "NUMBER", "SIZE") VALUES (1, 1, 1, '505', '40 m2')
    INTO A_ROOM (ID, IDHOTEL, IDROOMTYPE, "NUMBER", "SIZE") VALUES (2, 1, 2, '607', '50 m2')
    INTO A_ROOM (ID, IDHOTEL, IDROOMTYPE, "NUMBER", "SIZE") VALUES (3, 1, 3, '509', '70 m2')
    INTO A_ROOM (ID, IDHOTEL, IDROOMTYPE, "NUMBER", "SIZE") VALUES (4, 1, 3, '302', '70 m2')
SELECT * FROM DUAL;

INSERT INTO  A_BOOKING (ID, IDROOM, NUMBEROFADULTS, NUMBEROFCHILDREN, "TYPE", BASEPRICE, MINREQUIREDNIGHTS, ACCOMODATIONPRICE, ACCOMMODATIONDISCOUNT, PAYMENTPLAN, TOTALVALUE, PAIDDATE, PAID) 
VALUES (1, 1, 2, 2, 'ALLINCLUSIVE', 350, 3, 100, 40, 'Payment plan', 410,  TO_DATE('2022/05/06', 'yyyy/mm/dd'), 1)