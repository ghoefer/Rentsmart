SELECT * from agent;
SELECT * from property;
SELECT * from room;
SELECT * from tenant;


DROP TABLE agent;
CREATE table agent(

AgentID         Varchar(4)        not null,
ag_fName        VARCHAR(25)                not null,
ag_lName        VARCHAR(25)                not null,
ag_cell         VARCHAR(15)                 ,
Email           VARCHAR(25)                 ,
StartDate       DATE                       not null,

CONSTRAINT  AgentID_pk PRIMARY KEY (AgentID)
);

INSERT INTO Agent VALUES ('Ag01', 'Cody', 'Reynolds', '702-990-2344',	'creynolds@rentsmart.com',	'10-12-2010');
INSERT INTO Agent VALUES ('ag02',	'Bryan',	'Fuller',	'702-673-0964',	'bfuller@rentsmart.com',	'10-30-2009');
INSERT INTO Agent VALUES ('ag03',	'Julia',	'Strout',	'702-334-7657',	'jstrout@rentsmart.com',	'9-10-2008');
INSERT INTO Agent VALUES ('ag04',	'Jack',	'Fisher',	'702-347-5833',	'jfisher@rentsmart.com',	'6-30-2009');
INSERT INTO Agent VALUES( 'ag05',	'Cory',	'Hayden',	'702-473-8564',	'chayden@rentsmart.com',	'7-30-2012');
INSERT INTO Agent VALUES ( 'ag06',	'Sam',	'Nelson',	'702-759-3874',	'snelson@rentsmart.com',	'7-28-2010');
INSERT INTO Agent VALUES ('ag07',	'AJ',	'Ford',	'702-153-9264',	'aford@rentsmart.com',	'9-12-2001');
INSERT INTO Agent VALUES ( 'ag08',	'John',	'Green',	'702-758-2938',	'jgreen1@rentsmart.com',	'3-16-2010');
INSERT INTO Agent VALUES ( 'ag09',	'Tom',	'Shaw',	'702-758-7383',	'tshaw@rentsmart.com',	'9-16-2013');
INSERT INTO Agent VALUES( 'ag10',	'Joe',	'Dirt',	'702-749-3749',	'jdirt@rentsmart.com',	'8-15-2016');
INSERT INTO Agent VALUES( 'ag11',	'Tory',	'Buffolini',	'702-758-1234',	'tbuff@rentsmart.com',	'6-29-2016')
INSERT INTO Agent VALUES ('ag12',	'Marie',	'Flynn',	'702-348-2310',	'mflynn1@rentsmart.com',	'7-24-2009');
INSERT INTO Agent VALUES ('ag13',	'Ashley',	'Turner',	'701-238-0294',	'aturner@rentsmart.com',	'6-24-2010');
INSERT INTO Agent VALUES( 'ag14',	'Morgan',	'Be',	'702-432-2309',	'mbe@rentsmart.com',	'3-12-2009');
INSERT INTO Agent VALUES( 'ag15',	'Tracy',	'Thorpe',	'702-394-5793',	'tthorpe1@rentsmart.com',	'4-15-2010');
INSERT INTO Agent VALUES( 'ag16',	'Henry',	'Crabtree',	'702-353-9348',	'hcrabtree@rentsmart.com',	'5-14-2009');
INSERT INTO Agent VALUES( 'ag17',	'Amy', 	'Collins',	'702-4393-434',	'acollins@rentsmart.com',	'6-12-2015');
INSERT INTO Agent VALUES ('ag18',	'Kim',	'Rivera',	'702-343-2222',	'krivera@rentsmart.com',	'5-12-2011');
INSERT INTO Agent VALUES ('ag19',	'Laura',	'Brown',	'702-341-2301',	'lbrown1@rentsmart.com',	'4-2-2014');
INSERT INTO Agent VALUES ('ag20',	'Carl',	'Leonard',	'702-238-2384',	'cleonard@rentsmart.com',	'3-4-2013');
INSERT INTO Agent VALUES ('ag21',	'Patricia',	'Williams',	'702-093-8495',	'pwilliams1@rentsmart.com',	'3-3-2010');
INSERT INTO Agent VALUES ('ag22',	'Josie',	'Miller',	'702-343-2311',	'jmiller@rentsmart.com',	'4-5-2012');



DROP TABLE room;
CREATE TABLE room(


roomID                  CHAR(10)    not null,
numberwindows           SMALLINT    ,
[level]                 TINYINT     not null,
flooring                CHAR(20)    ,
height                  INT,
[type]                  CHAR(20)    ,
propertyID              CHAR(10)    not null,

CONSTRAINT room_fk FOREIGN KEY (propertyID) REFERENCES property(propertyID),
CONSTRAINT roomID_pk PRIMARY KEY (roomID)

);

INSERT INTO room VALUES('rm01',	2,	1,	'wood',	8,	'Bedroom',	'prop01'); 
INSERT INTO room VALUES('rm02',	3,	2,	'carpet',	8,	'Bath',	'prop01'); 
INSERT INTO room VALUES('rm03',	1,	1,	'tile',	8,	'MasterBed',	'prop03');
INSERT INTO room VALUES('rm04',	4,	1,	'wood',	8,	'MasterBath',	'prop03');
INSERT INTO room VALUES('rm05',	0,	1,	'wood',	8,	'Kitchen',	'prop07');
INSERT INTO room VALUES('rm06',	1,	1,	'carpet',	8,	'Kitchen',	'prop07');
INSERT INTO room VALUES('rm07',	2,	3,	'ceramic',	8,	'MasterBed',	'prop11');
INSERT INTO room VALUES('rm08',	3,	2,	'tile', 	8,	'kitchen',	'prop11');
INSERT INTO room VALUES('rm09',	2,	2,	'carpet', 	8,	'Bedroom',	'prop15');
INSERT INTO room VALUES('rm10',	3,	2,	'wood',	10,	'Kitchen',	'prop05');
INSERT INTO room VALUES('rm11',	1,	2,	'tile',	8,	'LivingRoom',	'prop05');
INSERT INTO room VALUES('rm12',	0,	1,	'tile',	10,	'Kitchen',	'prop09');
INSERT INTO room VALUES('rm13',	1,	2,	'wood',	8,	'LivingRoom',	'prop09');
INSERT INTO room VALUES('rm14',	2,	1,	'carpet',	10,	'MasterBed',	'prop13');
INSERT INTO room VALUES('rm15',	0,	2,	'carpet',	12,	'Bath',	'prop13');
INSERT INTO room VALUES('rm16',	3,	1,	'ceramic',	15,	'LivingRoom',	'prop02');
INSERT INTO room VALUES('rm17',	2,	2,	'tile', 	8,	'MasterBed',	'prop02');
INSERT INTO room VALUES('rm18',	0,	1,	'carpet', 	7.5,	'Bath',	'prop04');
INSERT INTO room VALUES('rm19',	2,	3,	'wood',	10,	'Bath',	'prop04');
INSERT INTO room VALUES('rm20',	3,	2,	'wood',	15,	'LivingRoom',	'prop06');
INSERT INTO room VALUES('rm21',	1,	3,	'carpet',	12,	'Bedroom',	'prop06');


CREATE TABLE rental(
TenantID            CHAR(10)     not null,
PropertyID          CHAR(10)     not null,
SatisfactionLevel   TINYINT         ,
StartDate           DATE            not null,
EndDate             DATE            ,

CONSTRAINT rental_tenant_fk FOREIGN KEY (tenantID) REFERENCES tenant(ten_id),
CONSTRAINT rental_property_fk FOREIGN KEY (propertyID) REFERENCES property(propertyID)
);

INSERT INTO rental VALUES ('ten05',	'prop01',	3,	'10-19-2017', '');
INSERT INTO rental VALUES ('ten08',	'prop11',	4,	'11-21-13', '');
INSERT INTO rental VALUES ('ten09',	'prop22',	2,	'11-26-10', '');
INSERT INTO rental VALUES ('ten11',	'prop19',	5,	'12-30-13', '');
INSERT INTO rental VALUES ('ten15',	'prop07',	1,	'1-13-12', '');
INSERT INTO rental VALUES ('ten13',	'prop05',	3,	'1-9-10', '');
INSERT INTO rental VALUES ('ten14',	'prop08',	5,	'1-2-08', '');
INSERT INTO rental VALUES ('ten19',	'prop12',	2,	'1-4-05', '');
INSERT INTO rental VALUES ('ten22',	'prop14',	4,	'4-5-13', '');
INSERT INTO rental VALUES ('ten20',	'prop15',	3,	'9-7-17', '');
INSERT INTO rental VALUES ('ten21',	'prop02',	2,	'9-3-04', '10-11-10');
INSERT INTO rental VALUES ('ten17',	'prop16',	1,	'3-2-12', '11-12-15');
INSERT INTO rental VALUES ('ten04',	'prop06',	4,	'2-5-09', '');
INSERT INTO rental VALUES ('ten01',	'prop17',	2,	'06-07-07', '');
INSERT INTO rental VALUES ('ten02',	'prop21',	5,	'7-7-07', '3-2-12');
INSERT INTO rental VALUES ('ten18',	'prop20',	2,	'12-4-13', '12-19-14');
INSERT INTO rental VALUES ('ten16',	'prop13',	3,	'11-13-15', '');
INSERT INTO rental VALUES ('ten12',	'prop18',	1,	'10-4-15', '');
INSERT INTO rental VALUES ('ten03',	'prop04',	3,	'3-6-17', '');
INSERT INTO rental VALUES ('ten04',	'prop09',	5,	'3-3-16', '');
INSERT INTO rental VALUES ('ten06',	'prop10',	2,	'4-2-15', '');
INSERT INTO rental VALUES ('ten07',	'prop03',	1,	'4-3-12', '');