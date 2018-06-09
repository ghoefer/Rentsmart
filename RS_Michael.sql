ALTER TABLE property DROP CONSTRAINT property_fk1;
ALTER TABLE property DROP CONSTRAINT property_fk2;

DROP TABLE property;
CREATE TABLE property
   (
   PropertyID          CHAR(10)        NOT NULL,
   TotalSqFt           DECIMAL(7,2)    NOT Null,
   Picture             IMAGE           ,
   Type                CHAR(20)        not null,
   YearBuilt           CHAR(4)         ,
   Lot                 DECIMAL(5,2)    ,
   DateListed          DATE            ,
   HeatingType         CHAR(20)        ,
   Parking             TINYINT         ,
   Street              VARCHAR(50)     not null,
   City                VARCHAR(20)     not null,
   State               CHAR(2)         not null,
   ZipCode             CHAR(5)         not null,
   OwnerID             CHAR(10)        not null,
   AgentID             VARCHAR(4)      not null
   
   CONSTRAINT pk_property PRIMARY KEY (PropertyID),
   CONSTRAINT property_fk1 FOREIGN KEY (OwnerID) REFERENCES owners(own_id),
   CONSTRAINT property_fk2 FOREIGN KEY (AgentID) REFERENCES agent(AgentID)
   );

INSERT into property VALUES ('prop01',  '1200', null,   'House',    '1991', 1,  '10-12-2010','Electric', 2,  '381 St Paul Lane', 'Las Vegas',    'NV',   '88901',    'Own01',    'ag01');   
INSERT into property VALUES ('prop02',  '2500', null,   'Apartment','2015', 2,  '10-30-2009','Gas',     3,  '4 Brewery Ave.',   'Las Vegas',    'NV',   '89130',    'own02',    'ag02');
INSERT into property VALUES ('prop03',  '2300', null,   'Condo',    '2013', 0.3,'10-12-2010','Electric',    1,  '7278 Helen Dr.',   'Las Vegas',    'NV',   '89128',    'own03',    'ag03');
INSERT into property VALUES ('prop04',  '2550', null,   'Loft',     '2001', 0.7,'10-30-2009','gas',     2,  '881 Rockaway Court','Las Vegas',   'NV',   '89133',    'own04',    'ag04');
INSERT into property VALUES ('prop05',  '2245', null,   'house',    '1996', 1.1,    '9-10-2008',    'Electric', 3,  '364 Oakland Ave',  'Las Vegas',    'NV',   '89131',    'own05',    'ag05');
INSERT into property VALUES ('prop06',  '3345', null,   'Apartment',    '1991', 2,  '6-30-2009',    'Electric', 1,  '7778 Broad Drive', 'Las Vegas',    'NV',   '88901',    'own06',    'ag06');   
INSERT into property VALUES ('prop07',  '2146', null,   'condo',    '2009', 2.4,    '7-30-2012',    'gas',  2,  '8450 Cambridge St',    'Las Vegas',    'NV',   '89128',    'own07',    'ag07');   
INSERT into property VALUES ('prop08',  '1287', null,   'Loft', '2010', 1.2,    '7-28-2010',    'gas',  2,  '480 North Nut Swamp Ave',  'Las Vegas',    'NV',   '89171',    'own08',    'ag08');   
INSERT into property VALUES ('prop09',  '1140', null,   'house','2000', 0.7,    '9-12-2001',    'Electric', 2,  '8731 Roosevelt Dr',    'Las Vegas',    'NV',   '89127',    'own09',    'ag09');   
INSERT into property VALUES ('prop10',  '1250', null,   'house',    '2012', 0.8,    '3-16-2010',    'gas',  2,  '671 West Lake Forest Ave', 'Las Vegas',    'NV',   '88901',    'own10',    'ag10');   
INSERT into property VALUES ('prop11',  '2389', null,   'condo',    '2007', 0.4,    '9-16-2013',    'Electric', 1,  '77 W. Fairfield Drive',    'Las Vegas',    'NV',   '89133',    'own11',    'ag11');   
INSERT into property VALUES ('prop12',  '1002', null,   'condo',    '1991', 0.9,    '8-15-2016',    'gas',  1,  '52 Rose Street',   'Las Vegas',    'NV',   '88901',    'own12',    'ag12');   
INSERT into property VALUES ('prop13',  '1023', null,   'Apartment',    '2005', 0.5,    '6-29-2016',    'gas',  2,  '7896 Nicolls Ave', 'Las Vegas',    'NV',   '89130',    'own13',    'ag13');   
INSERT into property VALUES ('prop14',  '3472', null,   'Apartment',    '2014', 0.8,    '7-24-2009',    'Electric', 2,  '564 County Dr',    'Las Vegas',    'NV',   '89128',    'own14',    'ag14');   
INSERT into property VALUES ('prop15',  '2346', null,   'house',    '2000', 1.9,    '6-24-2010',    'gas',  3,  '436 Cardinal St',  'Las Vegas',    'NV',   '88901',    'own15',    'ag15');   
INSERT into property VALUES ('prop16',  '1385', null,   'condo',    '1999', 2.8,    '3-12-2009',    'gas',  4,  '3 S. Poplar Ave',  'Las Vegas',    'NV',   '89108',    'own16',    'ag16');   
INSERT into property VALUES ('prop17',  '1291', null,   'house',    '2008', 1.8,    '4-15-2010',    'gas',  2,  '7213 Arch Lane',   'Las Vegas',    'NV',   '89137',    'own17',    'ag17');   
INSERT into property VALUES ('prop18',  '1294', null,   'house',    '2003', 1.2,    '7-30-2012',    'Electric', 3,  '281 South John Ave',   'Las Vegas',    'NV',   '89145',    'own18',    'ag18');   
INSERT into property VALUES ('prop19',  '2374', null,   'house',    '1998', 1.4,    '7-28-2010',    'Electric', 1,  '746 N. Washington Drive',  'Las Vegas',    'NV',   '89130',    'own19',    'ag19');   
INSERT into property VALUES ('prop20',  '1235', null,   'house',    '2011', 1.7,    '9-12-2001',    'gas',  2,  '237 Pierce Dr',    'Las Vegas',    'NV',   '89127',    'own20',    'ag20');   
INSERT into property VALUES ('prop21',  '2205', null,   'Apartment',    '2010', 0.5,    '3-16-2010',    'Electric', 3,  '829 Wrangler Lane',    'Las Vegas',    'NV',   '88901',    'own21',    'ag21');   
INSERT into property VALUES ('prop22',  '2357', null,   'Apartment',    '2001', 0.8,    '9-16-2013',    'gas',  '1',    '80 Creekside Circle',  'Las Vegas',    'NV',   '89102',    'own22',    'ag22');   

SELECT * FROM agent;
SELECT * FROM fireplace;
SELECT * FROM pool;
SELECT * FROM property;
SELECT * FROM tenant;
SELECT * FROM owners;
SELECT * FROM rental;
SELECT * FROM room;
SELECT * FROM rental;