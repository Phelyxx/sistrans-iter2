/* Clean DB */
DELETE FROM A_INCLUDEDFOOD;
DELETE FROM A_FOODPRODUCT;
DELETE FROM A_RESTAURANT;
DELETE FROM A_SERVICEINVOICE;
DELETE FROM A_CONSUMEDSERVICES;
DELETE FROM A_RESERVATION;
DELETE FROM A_SERVICE;
DELETE FROM A_CHECKINOUT;
DELETE FROM A_USER;
DELETE FROM A_OCCUPANCYDATE;
DELETE FROM A_BOOKING;
DELETE FROM A_ROOM;
DELETE FROM A_OFFERS;
DELETE FROM A_AMENITY;
DELETE FROM A_HOTEL;
DELETE FROM A_ROOMTYPE;

/* Poblate DB */
INSERT ALL
    INTO A_AMENITY (ANAME, DESCRIPTION) VALUES ('Television', 'TV pantalla plana 45 pulgadas')
    INTO A_AMENITY (ANAME, DESCRIPTION) VALUES ('Jacuzzi', 'Jacuzzi para 2 personas con burbujas')
    INTO A_AMENITY (ANAME, DESCRIPTION) VALUES ('Minibar', 'Minibar con m�s de 30 productos')
    INTO A_AMENITY (ANAME, DESCRIPTION) VALUES ('Cafetera', 'Cafetera nespresso con 5 pods incluidos')
SELECT * FROM DUAL;

INSERT ALL
    INTO A_ROOMTYPE (ID, NAME, DESCRIPTION, CAPACITY, PRICE) VALUES (1, 'Suite', 'Suite plus de lujo', 3, 500)
    INTO A_ROOMTYPE (ID, NAME, DESCRIPTION, CAPACITY, PRICE) VALUES (2, 'Suite presidencial', 'Suite mas costosa y de lujo', 3, 1000)
    INTO A_ROOMTYPE (ID, NAME, DESCRIPTION, CAPACITY, PRICE) VALUES (3, 'Familiar', 'Suite para toda la familia', 6, 200)
SELECT * FROM DUAL;

INSERT ALL
    INTO A_HOTEL (ID, NAME, DESCRIPTION, STARS, CITY, ADDRESS, CURRENCY) VALUES (1, 'HotelAndes NH Bogot�', 'Sucursal principal de la cadena HotelAndes en la capital de Colombia', 5, 'Bogot�', 'Cl 116 #8-15', 'USD')
SELECT * FROM DUAL;

INSERT ALL
    INTO A_ROOM (ID, IDHOTEL, IDROOMTYPE, "NUMBER", "SIZE") VALUES (1, 1, 1, '505', '40 m2')
    INTO A_ROOM (ID, IDHOTEL, IDROOMTYPE, "NUMBER", "SIZE") VALUES (2, 1, 2, '607', '50 m2')
    INTO A_ROOM (ID, IDHOTEL, IDROOMTYPE, "NUMBER", "SIZE") VALUES (3, 1, 3, '509', '70 m2')
    INTO A_ROOM (ID, IDHOTEL, IDROOMTYPE, "NUMBER", "SIZE") VALUES (4, 1, 3, '302', '70 m2')
SELECT * FROM DUAL;

INSERT ALL
    INTO A_OCCUPANCYDATE (ID, IDROOM, DATESTART, DATEFINISH) VALUES (1, 1, TO_DATE('2022/05/03', 'yyyy/mm/dd'), TO_DATE('2022/06/03', 'yyyy/mm/dd'))
    INTO A_OCCUPANCYDATE (ID, IDROOM, DATESTART, DATEFINISH) VALUES (2, 1, TO_DATE('2022/02/03', 'yyyy/mm/dd'), TO_DATE('2022/03/03', 'yyyy/mm/dd'))
SELECT * FROM DUAL;

INSERT ALL
    INTO A_BOOKING (ID, IDROOM, NUMBEROFADULTS, NUMBEROFCHILDREN, "TYPE", BASEPRICE, MINREQUIREDNIGHTS, ACCOMODATIONPRICE, ACCOMMODATIONDISCOUNT, PAYMENTPLAN, TOTALVALUE, PAIDDATE, PAID) 
        VALUES (1, 1, 2, 2, 'ALLINCLUSIVE', 350, 3, 100, 40, 'Payment plan', 410,  TO_DATE('2022/05/06', 'yyyy/mm/dd'), 1)
    INTO A_BOOKING (ID, IDROOM, NUMBEROFADULTS, NUMBEROFCHILDREN, "TYPE", BASEPRICE, MINREQUIREDNIGHTS, ACCOMODATIONPRICE, ACCOMMODATIONDISCOUNT, PAYMENTPLAN, TOTALVALUE, PAIDDATE, PAID) 
        VALUES (2, 2, 3, 1, 'LONGSTAY', 450, 3, 200, 20, 'Payment plan', 640,  TO_DATE('2022/05/06', 'yyyy/mm/dd'), 1)
    INTO A_BOOKING (ID, IDROOM, NUMBEROFADULTS, NUMBEROFCHILDREN, "TYPE", BASEPRICE, MINREQUIREDNIGHTS, ACCOMODATIONPRICE, ACCOMMODATIONDISCOUNT, PAYMENTPLAN, TOTALVALUE, PAIDDATE, PAID) 
        VALUES (3, 3, 4, 1, 'TIMESHARE', 950, 4, 400, 20, 'Payment plan', 540,  TO_DATE('2022/05/06', 'yyyy/mm/dd'), 1)     
    INTO A_BOOKING (ID, IDROOM, NUMBEROFADULTS, NUMBEROFCHILDREN, "TYPE", BASEPRICE, MINREQUIREDNIGHTS, ACCOMODATIONPRICE, ACCOMMODATIONDISCOUNT, PAYMENTPLAN, TOTALVALUE, PAIDDATE, PAID) 
        VALUES (4, 4, 4, 1, 'PROMOTION', 750, 5, 400, 60, 'Payment plan', 640,  TO_DATE('2022/05/06', 'yyyy/mm/dd'), 1)            
SELECT * FROM DUAL;

INSERT ALL
    INTO A_USER ("DOCUMENT", "PASSWORD", DOCUMENTTYPE, "NAME", EMAIL, BORNDATE, "ROLE") 
        VALUES (1001863505, 'pedro123', 'Cedula de Ciudadania', 'Pedro Gonzales', 'email@email.com', TO_DATE('2000/05/03', 'yyyy/mm/dd'), 'CLIENT')
    INTO A_USER ("DOCUMENT", "PASSWORD", DOCUMENTTYPE, "NAME", EMAIL, BORNDATE, "ROLE") 
        VALUES (812941840, 'fabio123', 'Cedula de Ciudadania', 'Fabio Gonzales', 'otroemail@email.com', TO_DATE('1998/02/09', 'yyyy/mm/dd'), 'CLIENT')
    INTO A_USER ("DOCUMENT", "PASSWORD", DOCUMENTTYPE, "NAME", EMAIL, BORNDATE, "ROLE") 
        VALUES (243789897, 'domingo123', 'Cedula de Ciudadania', 'Domingo Gonzales', 'domingo@gmail.com', TO_DATE('2001/05/03', 'yyyy/mm/dd'), 'CLIENT')
    INTO A_USER ("DOCUMENT", "PASSWORD", DOCUMENTTYPE, "NAME", EMAIL, BORNDATE, "ROLE") 
        VALUES (678901200, 'vicente123', 'Cedula de Ciudadania', 'Vicente Gonzales', 'vicente@gmail.com', TO_DATE('1972/02/09', 'yyyy/mm/dd'), 'CLIENT')        
    INTO A_USER ("DOCUMENT", "PASSWORD", DOCUMENTTYPE, "NAME", EMAIL, BORNDATE, "ROLE") 
        VALUES (123021319, 'ernesto123', 'Cedula de Ciudadania', 'Ernesto Garcia', 'admin@datos.com', TO_DATE('1980/01/03', 'yyyy/mm/dd'), 'DATAADMIN')
    INTO A_USER ("DOCUMENT", "PASSWORD", DOCUMENTTYPE, "NAME", EMAIL, BORNDATE, "ROLE") 
        VALUES (476837325, 'maria123', 'Cedula de Ciudadania', 'Maria Botero', 'admin@hotelAndes.com', TO_DATE('1980/01/03', 'yyyy/mm/dd'), 'HOTELMANAGER')
    INTO A_USER ("DOCUMENT", "PASSWORD", DOCUMENTTYPE, "NAME", EMAIL, BORNDATE, "ROLE") 
        VALUES (384923492, 'gabriel123', 'Cedula de Ciudadania', 'Gabriel Gonzales', 'gabriel@hotelAndes.com', TO_DATE('1990/05/01', 'yyyy/mm/dd'), 'EMPLOYEE')
    INTO A_USER ("DOCUMENT", "PASSWORD", DOCUMENTTYPE, "NAME", EMAIL, BORNDATE, "ROLE") 
        VALUES (576345834, 'fernando123', 'Cedula de Ciudadania', 'Fernando Gonzales', 'fernando@hotelAndes.com', TO_DATE('1992/03/01', 'yyyy/mm/dd'), 'EMPLOYEE')
    INTO A_USER ("DOCUMENT", "PASSWORD", DOCUMENTTYPE, "NAME", EMAIL, BORNDATE, "ROLE") 
        VALUES (100678314, 'francisca123', 'Cedula de Ciudadania', 'Francisca Gonzales', 'francisca@hotelAndes.com', TO_DATE('1998/05/01', 'yyyy/mm/dd'), 'EMPLOYEE')
    INTO A_USER ("DOCUMENT", "PASSWORD", DOCUMENTTYPE, "NAME", EMAIL, BORNDATE, "ROLE") 
        VALUES (509340123, 'mar123', 'Cedula de Ciudadania', 'Mar Gonzales', 'mar@hotelAndes.com', TO_DATE('1991/02/24', 'yyyy/mm/dd'), 'EMPLOYEE')
    INTO A_USER ("DOCUMENT", "PASSWORD", DOCUMENTTYPE, "NAME", EMAIL, BORNDATE, "ROLE") 
        VALUES (108620937, 'jose123', 'Cedula de Ciudadania', 'Jose Velasco', 'jose@hotelAndes.com', TO_DATE('1993/05/01', 'yyyy/mm/dd'), 'RECEPTIONIST')    
    INTO A_USER ("DOCUMENT", "PASSWORD", DOCUMENTTYPE, "NAME", EMAIL, BORNDATE, "ROLE") 
        VALUES (156107038, 'alvaro123', 'Cedula de Ciudadania', 'Alvaro Ramos', 'alvaro@hotelAndes.com', TO_DATE('1999/06/01', 'yyyy/mm/dd'), 'RECEPTIONIST')        
SELECT * FROM DUAL;

INSERT ALL
    INTO A_CHECKINOUT (IDBOOKING, DOCUMENTUSER, CHECKINDATE, CHECKINMADE, CHECKOUTDATE, CHECKOUTMADE) 
        VALUES (1, 1001863505, TO_DATE('2022/01/03 09:12', 'yyyy/mm/dd hh24:mi'), 1, TO_DATE('2022/01/06 14:02', 'yyyy/mm/dd hh24:mi'), 1)
    INTO A_CHECKINOUT (IDBOOKING, DOCUMENTUSER, CHECKINDATE, CHECKINMADE, CHECKOUTDATE, CHECKOUTMADE) 
        VALUES (2, 812941840, TO_DATE('2022/01/03 11:18', 'yyyy/mm/dd hh24:mi'), 0, TO_DATE('2022/01/06 18:34', 'yyyy/mm/dd hh24:mi'), 0)
SELECT * FROM DUAL;

INSERT ALL
    INTO A_RESTAURANT (ID, "NAME", "TYPE", FOODTYPE, MUSICTYPE) VALUES (1, 'Restaurante Caribe y mas', 'RESTAURANT', 'Comida del caribe', 'Cumbia')
SELECT * FROM DUAL;

INSERT ALL
    INTO A_FOODPRODUCT (ID, IDRESTAURANT, "NAME", "DESCRIPTION", PRICE, IMGSRC) VALUES (1, 1, 'Trucha a la plancha', 'Descripcion trucha a la plancha', 30, '')
    INTO A_FOODPRODUCT (ID, IDRESTAURANT, "NAME", "DESCRIPTION", PRICE, IMGSRC) VALUES (2, 1, 'Trucha al ajillo', 'Descripcion Trucha al ajillo', 40, '')
    INTO A_FOODPRODUCT (ID, IDRESTAURANT, "NAME", "DESCRIPTION", PRICE, IMGSRC) VALUES (3, 1, 'Cazuela de mariscos', 'Descripcion Cazuela de mariscos', 50, '')
    INTO A_FOODPRODUCT (ID, IDRESTAURANT, "NAME", "DESCRIPTION", PRICE, IMGSRC) VALUES (4, 1, 'Cerveza', 'Descripcion cerveza', 5, '')
SELECT * FROM DUAL;

INSERT ALL
    INTO A_INCLUDEDFOOD (IDBOOKING, IDFOODPRODUCT, MAXNUMBEROFINCLUDEDITEMS, PRODUCTDISCOUNT) VALUES (1, 1, 1000, 25)
    INTO A_INCLUDEDFOOD (IDBOOKING, IDFOODPRODUCT, MAXNUMBEROFINCLUDEDITEMS, PRODUCTDISCOUNT) VALUES (1, 2, 1000, 15)
    INTO A_INCLUDEDFOOD (IDBOOKING, IDFOODPRODUCT, MAXNUMBEROFINCLUDEDITEMS, PRODUCTDISCOUNT) VALUES (1, 3, 1000, 10)
    INTO A_INCLUDEDFOOD (IDBOOKING, IDFOODPRODUCT, MAXNUMBEROFINCLUDEDITEMS, PRODUCTDISCOUNT) VALUES (1, 4, 1000, 25)
SELECT * FROM DUAL;

INSERT ALL
    INTO A_SERVICE (ID, "NAME", "DESCRIPTION", STARTWORKHOUR, ENDWORKHOUR, "TYPE", "CATEGORY", AVAILABLE, AVAILABLECAPACITY, EMPLOYEETHATREGISTER) 
        VALUES (1, 'Masaje', 'Descripcion masaje', 8, 20, 'SPA', 'RESERVABLE', 1, 5, 123021319)
    INTO A_SERVICE (ID, "NAME", "DESCRIPTION", STARTWORKHOUR, ENDWORKHOUR, "TYPE", "CATEGORY", AVAILABLE, AVAILABLECAPACITY, EMPLOYEETHATREGISTER) 
        VALUES (2, 'Piscina', 'Descripcion piscina', 8, 22, 'POOL', 'CONVENIENCE', 1, 20, 123021319)    
    INTO A_SERVICE (ID, "NAME", "DESCRIPTION", STARTWORKHOUR, ENDWORKHOUR, "TYPE", "CATEGORY", AVAILABLE, AVAILABLECAPACITY, EMPLOYEETHATREGISTER) 
        VALUES (3, 'Gimnasio', 'Descripcion gimnasio', 6, 20, 'GYM', 'CONVENIENCE', 1, 10, 123021319)    
    INTO A_SERVICE (ID, "NAME", "DESCRIPTION", STARTWORKHOUR, ENDWORKHOUR, "TYPE", "CATEGORY", AVAILABLE, AVAILABLECAPACITY, EMPLOYEETHATREGISTER) 
        VALUES (4, 'Supermercado', 'Descripcion supermercado', 8, 20, 'SUPERMARKET', 'GASTRONOMY', 1, 50, 123021319)  
    INTO A_SERVICE (ID, "NAME", "DESCRIPTION", STARTWORKHOUR, ENDWORKHOUR, "TYPE", "CATEGORY", AVAILABLE, AVAILABLECAPACITY, EMPLOYEETHATREGISTER) 
        VALUES (5, 'Internet', 'Descripcion internet', 1, 23, 'INTERNET', 'CONVENIENCE', 1, 200, 123021319)   
    INTO A_SERVICE (ID, "NAME", "DESCRIPTION", STARTWORKHOUR, ENDWORKHOUR, "TYPE", "CATEGORY", AVAILABLE, AVAILABLECAPACITY, EMPLOYEETHATREGISTER) 
        VALUES (6, 'Tienda', 'Descripcion tienda', 8, 16, 'STORE', 'GASTRONOMY', 1, 50, 123021319)
    INTO A_SERVICE (ID, "NAME", "DESCRIPTION", STARTWORKHOUR, ENDWORKHOUR, "TYPE", "CATEGORY", AVAILABLE, AVAILABLECAPACITY, EMPLOYEETHATREGISTER) 
        VALUES (7, 'Lavanderia', 'Descripcion lavanderia', 8, 12, 'LAUNDRY', 'CONVENIENCE', 1, 10, 123021319)    
    INTO A_SERVICE (ID, "NAME", "DESCRIPTION", STARTWORKHOUR, ENDWORKHOUR, "TYPE", "CATEGORY", AVAILABLE, AVAILABLECAPACITY, EMPLOYEETHATREGISTER) 
        VALUES (8, 'Utensilios', 'Descripcion utensilios', 6, 22, 'UTENSILSLOAN', 'CONVENIENCE', 1, 5, 123021319)    
    INTO A_SERVICE (ID, "NAME", "DESCRIPTION", STARTWORKHOUR, ENDWORKHOUR, "TYPE", "CATEGORY", AVAILABLE, AVAILABLECAPACITY, EMPLOYEETHATREGISTER) 
        VALUES (9, 'Sala reuniones', 'Descripcion sala reuniones', 12, 20, 'MEETING ROOM', 'RESERVABLE', 1, 30, 123021319)  
    INTO A_SERVICE (ID, "NAME", "DESCRIPTION", STARTWORKHOUR, ENDWORKHOUR, "TYPE", "CATEGORY", AVAILABLE, AVAILABLECAPACITY, EMPLOYEETHATREGISTER) 
        VALUES (10, 'Conferencia', 'Descripcion conferencia', 8, 20, 'CONFERENCE', 'RESERVABLE', 1, 30, 123021319)                         
        
SELECT * FROM DUAL;

INSERT ALL
    INTO A_OFFERS (ANAMEAMENITY, IDROOMTYPE) VALUES ('Television', 1)
    INTO A_OFFERS (ANAMEAMENITY, IDROOMTYPE) VALUES ('Television', 2)
    INTO A_OFFERS (ANAMEAMENITY, IDROOMTYPE) VALUES ('Television', 3)
    INTO A_OFFERS (ANAMEAMENITY, IDROOMTYPE) VALUES ('Jacuzzi', 2)
    INTO A_OFFERS (ANAMEAMENITY, IDROOMTYPE) VALUES ('Minibar', 1)
    INTO A_OFFERS (ANAMEAMENITY, IDROOMTYPE) VALUES ('Minibar', 2)
    INTO A_OFFERS (ANAMEAMENITY, IDROOMTYPE) VALUES ('Minibar', 3)
    INTO A_OFFERS (ANAMEAMENITY, IDROOMTYPE) VALUES ('Cafetera', 2)
    INTO A_OFFERS (ANAMEAMENITY, IDROOMTYPE) VALUES ('Cafetera', 3)
SELECT * FROM DUAL;

INSERT ALL
    INTO A_RESERVATION (ID, IDSERVICE, DOCUMENTUSER, NUMBEROFGUESTS, DURATION, "DATE") VALUES (1, 1, 1001863505, 2, 60, TO_DATE('2022/05/04 09:00', 'yyyy/mm/dd hh24:mi') )
SELECT * FROM DUAL;


INSERT ALL
    INTO A_SERVICEINVOICE (ID, IDSERVICE, "VALUE", CREATEDDATE, PAIDDATE) VALUES (1, 1, 1500, TO_DATE('2022/05/04 10:15', 'yyyy/mm/dd hh24:mi'), TO_DATE('2022/05/06 11:23', 'yyyy/mm/dd hh24:mi'))
SELECT * FROM DUAL;

INSERT ALL
    INTO A_CONSUMEDSERVICES (IDBOOKING, IDSERVICEINVOICE, DISCOUNT, ALLINCLUSIVE) VALUES (2, 1, 0, 1)
SELECT * FROM DUAL;

COMMIT;