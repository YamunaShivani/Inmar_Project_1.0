/*Inmar Assignment......Problem Statement-2*/



/*Table name:RECORDS*/

CREATE TABLE REPORT(Retailer_id integer, Retailer_name text, Shopper_id integer, Shopper_transaction text, Shopper_paid_amt integer );

/* records of table named REPORT */
INSERT INTO REPORT VALUES(1,'Retailer1',5,'success',1000);
INSERT INTO REPORT VALUES(1,'Retailer1',5,'success',500);
INSERT INTO REPORT VALUES(1,'Retailer1',8,'success',3000);
INSERT INTO REPORT VALUES(2,'Retailer2',3,'success',4000);
INSERT INTO REPORT VALUES(2,'Retailer2',3,'success',2500);
INSERT INTO REPORT VALUES(3,'Retailer3',8,'success',2000);
INSERT INTO REPORT VALUES(3,'Retailer3',1,'success',9000);
INSERT INTO REPORT VALUES(3,'Retailer3',1,'success',6000);
INSERT INTO REPORT VALUES(3,'Retailer3',4,'success',4000);
INSERT INTO REPORT VALUES(3,'Retailer3',7,'success',3000);
INSERT INTO REPORT VALUES(4,'Retailer4',9,'success',500);
INSERT INTO REPORT VALUES(4,'Retailer4',6,'success',1500);

COMMIT;

/* To Display all the records from the table */

select * from REPORT;

/*         OUTPUT:
  	Retailer_id	Retailer_name	Shopper_id	Shopper_transaction	Shopper_paid_amt
	1	         Retailer1	        5	         success        	1000
	1          	 Retailer1	        5	         success	         500
	1	         Retailer1	        8	         success	        3000
	2	         Retailer2	        3	         success	        4000
	2	         Retailer2	        3	         success	        2500
	3	         Retailer3	        8	         success	        2000
	3	         Retailer3	        1	         success	        9000
	3	         Retailer3	        1	         success	        6000
	3	         Retailer3	        4	         success	        4000
	3	         Retailer3	        7	         success	        3000
	4            Retailer4	        9	         success	         500
	4	         Retailer4	        6	         success	        1500

*/

/*To Display Number of Retailers available in the REPORT*/

select COUNT(distinct Retailer_id) as NUMBER_OF_RETAILERS from REPORT;

/*  OUTPUT:
NUMBER_OF_RETAILERS
	4
*/
	
/*To Display Purchasers(shopper counts) for each Retailer available in the REPORT*/

select Retailer_id,count(Shopper_id) as Num_of_purchasers from REPORT group by (Retailer_id);

/*     OUTPUT:
Retailer_id  Num_of_purchasers
	1       	3
	2       	2
	3	        5
	4	        2

*/
/*To Display All the Shopper counts(Purchasers for all retailers)*/

select count(distinct Shopper_id) as ShopperCount from REPORT;

/* OUTPUT:
ShopperCount
	8
*/
/*To Display purchase amount w.r.t Retailer(To Display Amount aquired by each reatailer*/

select Retailer_id,SUM(Shopper_paid_amt) as SumOfAmount from REPORT group by Retailer_id;

/*      OUTPUT:
Retailer_id	 SumOfAmount
	1	     4500
	2	     6500
	3	     24000
	4	     2000
*/

/*To Display Top Retailer based on the number of Purchasers*/

select Retailer_id,count(Shopper_id) as TopRetailer from REPORT group by Retailer_id order by count(Retailer_id) desc;

/*      OUTPUT:
Retailer_id	 TopRetailer
	3	       5
	1	       3
	2	       2
	4	       2
*/
/* Inserting some records*/
INSERT INTO REPORT VALUES(4,'Retailer4',6,'success',1500);
INSERT INTO REPORT VALUES(4,'Retailer4',6,'success',1000);
INSERT INTO REPORT VALUES(4,'Retailer4',6,'success',2500);
INSERT INTO REPORT VALUES(4,'Retailer4',6,'success',3500);
INSERT INTO REPORT VALUES(4,'Retailer4',6,'success',9500);


/* OUTPUT
Retailer_id	Retailer_name	Shopper_id	Shopper_transaction	Shopper_paid_amt
	1	    Retailer1	       5	        success	            1000
	1       Retailer1	       5	        success	             500
	1	    Retailer1	       8	        success         	3000
	2	    Retailer2	       3	        success         	4000
	2	    Retailer2	       3	        success	            2500
	3	    Retailer3	       8	        success	            2000
	3	    Retailer3	       1	        success	            9000
	3	    Retailer3	       1	        success	            6000
	3	    Retailer3	       4	        success	            4000
	3	    Retailer3	       7            success	            3000
	4	    Retailer4	       9	        success	             500
	4	    Retailer4	       6	        success	            1500
	4	    Retailer4	       6	        success	            1500
	4	    Retailer4	       6	        success	            1500
	4	    Retailer4	       6	        success	            1500
	4	    Retailer4	       6	        success	            1500
	4	    Retailer4	       6	        success	            1500
*/



/*To Display Loyal Shopper of any Retailer based on number of purchased more than threshold 5*/

select Shopper_id  from REPORT group by Shopper_id having count(Shopper_id)>5;


/*      OUTPUT:(LOYAL SHOPPER)
        Shopper_id
	      6 
*/



	
	


