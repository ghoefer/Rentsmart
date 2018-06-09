DROP TABLE owners;
CREATE TABLE owners (
	own_id  	CHAR(10)	NOT NULL,
	own_fname   VARCHAR(25) NOT NULL,
	own_lname   VARCHAR(25) NOT NULL,
	own_cell	VARCHAR(12)     	,
	own_email   CHAR(25)        	,

	CONSTRAINT pk_owners PRIMARY KEY (own_id)
) ;



INSERT INTO owners VALUES ('Own01', 'John', 	'Smith',	'205-123-4567', 'jsmith@mail.com');
INSERT INTO owners VALUES ('own02', 'Alice',	'White',	'410-599-3115', 'AliceWonder@gmail.com');
INSERT INTO owners VALUES ('own03', 'Bob',  	'Liddell',  '125-546-4478', 'bobL3@gmail.com');
INSERT INTO owners VALUES ('own04', 'Elmer',	'Jetson',   '410-958-4738', 'eJetson@gmail.com');
INSERT INTO owners VALUES ('own05', 'George',   'Hagan',    '702-756-6789', 'hagan25@aol.com');
INSERT INTO owners VALUES ('own06', 'Harry',	'Potter',   '702-548-7289', 'harrypotter@gmail.com');
INSERT INTO owners VALUES ('own07', 'Charlie',  'Hughes',   '702-544-8690', 'chughes4@gmaiil.com');
INSERT INTO owners VALUES ('own08', 'Jessica',  'Kishore',  '702-375-9756', 'jkishore@gmail.com');
INSERT INTO owners VALUES ('own09', 'Fred', 	'rufolo',   '702-122-3422', 'frufolo@gmail.com');
INSERT INTO owners VALUES ('own10', 'Tyler',    'Dumas',    '702-927-2332', 'tylerdumas@gmail.com');
INSERT INTO owners VALUES ('own11', 'Billy',    'Winand',   '702-645-8354', 'billwin1@gmail.com');
INSERT INTO owners VALUES ('own12', 'Ryan',     'Frierson', '702-101-2875', 'ryanfrier@gmail.com');
INSERT INTO owners VALUES ('own13', 'Emma', 	'Fudd',     '702-989-0305', 'efrudd@gmail.com');
INSERT INTO owners VALUES ('own14', 'Stephanie', 'Shelton', '702-765-9696', 'sshelton2@gmail.com');
INSERT INTO owners VALUES ('own15', 'Hailey',   'Dendy',    '702-467-3455', 'haileydendy@gmail.com');
INSERT INTO owners VALUES ('own16', 'Hannah',   'Bray',     '702-845-0094', 'hannahb@gmail.com');
INSERT INTO owners VALUES ('own17', 'Blake',    'Campbell', '702-564-8843', 'blakecampbell@gmail.com');
INSERT INTO owners VALUES ('own18', 'Conner',   'Leamon',   '702-867-1129', 'connerl33@aol.com');
INSERT INTO owners VALUES ('own19', 'Rob',  	'Brown',    '702-789-0542', 'robbrown@gmail.com');
INSERT INTO owners VALUES ('own20', 'Jacob',    'Cole',     '702-757-9494', 'jacobcole@gmail.com');
INSERT INTO owners VALUES ('own21', 'Megan',    'Bowan',    '702-678-0243', 'mbowan4@gmail.com');
INSERT INTO owners VALUES ('own22', 'Kayla',    'Moriak',   '702-034-5290', 'kmoriak@gmail.com');

DROP TABLE tenant;
CREATE TABLE tenant(
	ten_id      	CHAR(10)    	NOT NULL,
	ten_fname   	VARCHAR(25) 	NOT NULL,
	ten_lname   	VARCHAR(25) 	NOT NULL,
	ten_cell    	VARCHAR(12)         	,
	ten_email   	VARCHAR(25)         	,

	CONSTRAINT pk_tenant PRIMARY KEY (ten_id)
);


INSERT INTO tenant VALUES ('ten01', 'Anna', 	'Werking',  '702-897-4657', 'awerk@yahoo.com');
INSERT INTO tenant VALUES ('ten02', 'Bryce',    'Matthews', '702-375-6688', 'matthews123@aol.com');
INSERT INTO tenant VALUES ('ten03', 'Callie',   'Parker',   '702-254-1653', 'parkcal@gmail.com');
INSERT INTO tenant VALUES ('ten04', 'David',    'Fountain', '702-583-3647', 'fountainsrock@gmail.com');
INSERT INTO tenant VALUES ('ten05', 'Nathan',   'Mania',    '702-674-0134', 'maniac@aol.com');
INSERT INTO tenant VALUES ('ten06', 'Andrew',   'Mills',    '702-584-1243', 'onthemills@gmail.com');
INSERT INTO tenant VALUES ('ten07', 'Justin',   'Wade', 	'702-585-9965', 'justwading@aol.com');
INSERT INTO tenant VALUES ('ten08', 'Matthew',  'Fowler',   '702-678-0123', 'fowlmat@gmail.com');
INSERT INTO tenant VALUES ('ten09', 'Emily',    'Southhall', '702-756-1934','ilovebirds@aol.com');
INSERT INTO tenant VALUES ('ten10', 'Natalie',  'Disbrow',  '702-593-3846', 'disbrowizcool@yahoo.com');
INSERT INTO tenant VALUES ('ten11', 'Zack', 	'Lee',  	'702-875-1436', 'leezack@att.net');
INSERT INTO tenant VALUES ('ten12', 'Jacob',    'Linch',    '702-473-1436', 'jacobrox3344@comcast.net');
INSERT INTO tenant VALUES ('ten13', 'Lauren',   'Garcia',   '702-492-1947', 'lgarcia@bellsouth.net');
INSERT INTO tenant VALUES ('ten14', 'Stephen',  'Heald',    '702-472-4846', 'baseballforever@aol.com');
INSERT INTO tenant VALUES ('ten15', 'Alyssa',   'Dawson',   '702-463-7294', 'dawsonfamily@comcast.net');
INSERT INTO tenant VALUES ('ten16', 'Robby',    'Roberts',  '702-829-1537', 'robrobrob@aol.com');
INSERT INTO tenant VALUES ('ten17', 'Kevin',    'Keller',   '702-467-2489', 'related2helenk@gmail.com');
INSERT INTO tenant VALUES ('ten18', 'Rachel',   'Jonson',   '702-377-2537', 'justjohnsons@gmail.com');
INSERT INTO tenant VALUES ('ten19', 'Christy',  'Baker',    '702-123-0986', 'nuggetluver@yahoo.com');
INSERT INTO tenant VALUES ('ten20', 'Sarah',    'Landen',   '702-748-3648', 'ilikebaking@gmail.com');
INSERT INTO tenant VALUES ('ten21', 'Mak',  	'Crocker',  '702-235-9930', 'whatsanemail@gmail.com');
INSERT INTO tenant VALUES ('ten22', 'Grace',    'Jackson',  '702-574-4749', 'notjanetjackson@yahoo.com');

SELECT * FROM property;

DROP TABLE fireplace;
CREATE TABLE fireplace(
	fireplace_id    	CHAR(6) 	not NULL,
	fp_type         	VARCHAR(20)     	,
	property_id     	char(10)	NOT NULL,

	CONSTRAINT pk_fireplace PRIMARY KEY (fireplace_id),
	CONSTRAINT fk_fireplace FOREIGN KEY (property_id) REFERENCES property (PropertyID)
);

INSERT INTO fireplace VALUES ('fp01',   'Gas',  	'prop01');
INSERT INTO fireplace VALUES ('fp02',   'Ethanol',  'prop02');
INSERT INTO fireplace VALUES ('fp03',   'Electric', 'prop21');
INSERT INTO fireplace VALUES ('fp04',   'Ethanol',  'prop22');
INSERT INTO fireplace VALUES ('fp05',   'Electric', 'prop13');
INSERT INTO fireplace VALUES ('fp06',   'Gas',  	'prop14');
INSERT INTO fireplace VALUES ('fp07',   'Gas',  	'prop15');
INSERT INTO fireplace VALUES ('fp08',   'Electric', 'prop17');
INSERT INTO fireplace VALUES ('fp09',   'Ethanol',  'prop19');
INSERT INTO fireplace VALUES ('fp10',   'Gas',  	'prop09');
INSERT INTO fireplace VALUES ('fp11',   'Gas',  	'prop10');
INSERT INTO fireplace VALUES ('fp12',   'Ethanol',  'prop08');
INSERT INTO fireplace VALUES ('fp13',   'Ethanol',  'prop01');
INSERT INTO fireplace VALUES ('fp14',   'Electric', 'prop04');
INSERT INTO fireplace VALUES ('fp15',   'Gas',      'prop05');
INSERT INTO fireplace VALUES ('fp16',   'Electric', 'prop07');
INSERT INTO fireplace VALUES ('fp17',   'Ethanol',  'prop11');
INSERT INTO fireplace VALUES ('fp18',   'Electric', 'prop16');
INSERT INTO fireplace VALUES ('fp19',   'Gas',      'prop03');
INSERT INTO fireplace VALUES ('fp20',   'Ethanol',  'prop06');
INSERT INTO fireplace VALUES ('fp21',   'Gas',  	'prop12');
INSERT INTO fireplace VALUES ('fp22',   'Electric', 'prop18');


DROP TABLE [pool];
CREATE TABLE [pool] (
	pool_id     	CHAR(6) 	NOT NULL,
	pool_type   	CHAR(14)        	,
	pool_location   CHAR(10)        	,
	pool_width  	SMALLINT        	,
	pool_length 	SMALLINT        	,
	maxDepth    	SMALLINT        	,
	property_id 	CHAR(10)	NOT NULL,

	CONSTRAINT pk_pool PRIMARY KEY (pool_id),
	CONSTRAINT fk_pool FOREIGN KEY (property_id) REFERENCES property(propertyid)
);

INSERT INTO [pool] VALUES ('po01',  'above ground', 'outdoor',  10, 30, 10, 'prop02');
INSERT INTO [pool] VALUES ('po02',  'inground', 	'Outdoor',  15, 20, 12, 'prop04');
INSERT INTO [pool] VALUES ('po03',  'above ground', 'outdoor',  20, 30, 10, 'prop10');
INSERT INTO [pool] VALUES ('po04',  'inground',     'outdoor',  15, 40, 5,  'prop09');
INSERT INTO [pool] VALUES ('po05',  'above ground', 'Outdoor',  15, 40, 6,  'prop11');
INSERT INTO [pool] VALUES ('po06',  'above ground', 'Outdoor',  10, 35, 6,  'prop12');
INSERT INTO [pool] VALUES ('po07',  'inground', 	'INdoor',   15, 30, 7,  'prop01');
INSERT INTO [pool] VALUES ('po08',  'above ground', 'INdoor',   20, 35, 8,  'prop03');
INSERT INTO [pool] VALUES ('po09',  'inground',     'Outdoor',  15, 40, 10, 'prop22');
INSERT INTO [pool] VALUES ('po10',  'inground',     'outdoor',  15, 40, 10, 'prop21');
INSERT INTO [pool] VALUES ('po11',  'above ground', 'INdoor',   10, 40, 9,  'prop08');
INSERT INTO [pool] VALUES ('po12',  'inground', 	'Outdoor',  15, 35, 9,  'prop05');
INSERT INTO [pool] VALUES ('po13',  'above ground', 'Outdoor',  20, 30, 10, 'prop20');
INSERT INTO [pool] VALUES ('po14',  'inground',     'Outdoor',  15, 15, 12, 'prop12');
INSERT INTO [pool] VALUES ('po15',  'above ground', 'Outdoor',  15, 40, 10, 'prop14');
INSERT INTO [pool] VALUES ('po16',  'inground', 	'outdoor',  10, 20, 5,  'prop15');
INSERT INTO [pool] VALUES ('po17',  'above ground', 'outdoor',  15, 30, 7,  'prop18');
INSERT INTO [pool] VALUES ('po18',  'inground',     'outdoor',  20, 30, 7,  'prop19');
INSERT INTO [pool] VALUES ('po19',  'above ground', 'outdoor',  15, 30, 8,  'prop16');
INSERT INTO [pool] VALUES ('po20',  'inground',     'INdoor',   15, 40, 4,  'prop06');
INSERT INTO [pool] VALUES ('po21',  'above ground', 'outdoor',  12, 25, 10, 'prop07');
INSERT INTO [pool] VALUES ('po22',  'above ground', 'INdoor',   20, 20, 10, 'prop13');


SELECT * FROM owners;
SELECT * from tenant;
SELECT * FROM fireplace;
SELECT * FROM [pool];


Queries
--Queries for tenants
SELECT * FROM property;

--what type of house
SELECT TYPE
	FROM property;

--search for condos
SELECT PropertyID, TotalSqFt, TYPE
	FROM property
	WHERE type = 'condo';

--find properties that have a pool
SELECT PropertyID, Street, City, State, ZipCode, pool_type
	FROM property, pool
	WHERE property.PropertyID = pool.property_id;


--find properties that have a fireplace
SELECT PropertyID, Street, City, State, ZipCode, fp_type
	FROM property, fireplace
	WHERE property.PropertyID = fireplace.property_id
	Order by ZipCode;

--What Properties have the greatest Satisfaction level
SELECT PropertyID, TenantID, SatisfactionLevel
	FROM rental
	WHERE SatisfactionLevel > 4;

--What houses are currently being rented
SELECT PropertyID, TenantID, StartDate
	FROM rental
	WHERE EndDate is NULL;


--get owner information
SELECT own_fname, own_lname, own_cell, own_email, PropertyID
	FROM owners, pool, property
	WHERE pool_location = 'INdoor';


SELECT * FROM rental;
