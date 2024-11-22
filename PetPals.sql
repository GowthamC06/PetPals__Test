Create database PetPals

Create Table Pet (
PetID int identity Primary Key,
Name Varchar(100)not null,
Age int not null,
Breed Varchar(100) not null,
ShelterID int 
Foreign key(ShelterID) references PetShelter(ShelterID),
AvailableForAdoption BIT NOT NULL DEFAULT 1)

CREATE TABLE Dog (
    DogID Int Identity Primary key, 
    PetID int,
 FOREIGN KEY(PetID) REFERENCES Pet(PetID),
    DogBreed VARCHAR(100) NOT NULL  )

	CREATE TABLE Cat (
    CatID INT identity PRIMARY KEY, 
    PetID INT ,
	FOREIGN KEY(PetID) REFERENCES Pet(PetID), 
    CatColor NVARCHAR(50) NOT NULL )   


Create Table PetShelter (
ShelterID int identity Primary Key,
Name Varchar(100),
Location Varchar(100))

Create Table Donation (
DonationID int identity Primary key,
DonorName Varchar(100),
DonationType varchar(100),
ItemType varchar(100),
DonationAmount Decimal(10,2),
DonationDate DATETIME NOT NULL  )


Create Table AdoptionEvents (
EventID int identity primary key,
EventName Varchar(100),
EventDate Date,
Location Varchar(100))

create TABLE Participants (
    EventID INT FOREIGN KEY REFERENCES AdoptionEvents(EventID),
    ShelterID INT FOREIGN KEY REFERENCES PetShelter(ShelterID),
    PRIMARY KEY (EventID, ShelterID))
    

insert into PetShelter(Name, Location)
Values
      ('Animal Shelter','Wall Street'),
	  ('Pets Shelter','Gandhi Street'),
	  ('Help Pet Shelter','ClockTower Street'),
	  ('Safe Pet Shelter','Walk Street')
	  
insert into Pet(Name,Age,Breed,ShelterID,AvailableForAdoption) 
Values
      ('Rock',5,'dog',1,1),
	  ('Milo',4,'Persian',1,1),
	  ('Max',3,'dog',2,1),
	  ('Buddy',3,'dog',3,1),
	  ('Charlie',2,'Siamese',4,1)

insert into Dog(PetID,DogBreed)
values
      (1,'BullBog'),
	  (3,'Golden Retriever'),
	  (4,'Poodle')

insert into Cat(PetID,CatColor)
values
     (2,'white'),
	 (5,'black')

Insert into Donation (DonorName,DonationType,DonationAmount,DonationDate,ItemType,DonationDate)
values
      ('Joe', 'Cash', 1200,Null,'2024-09-22'),
	  ('John', 'Item', 200,'Pet food','2024-08-27'),
	  ('Tomson', 'Item',450,'Pet Shampoo','2024-07-06'),
	  ('Chris', 'Cash', 600,null,'2024-09-05'),
	  ('David', 'Cash', 2000,null,'2024-10-06')

insert into AdoptionEvents (EventName,EventDate,Location)
Values     
       ('Pet Adoption','2024-09-06','Central Park'),
	   ('Pet Fest','2024-10-12','Central Park'),
	   ('Pet Festival','2024-08-13','Central Park'),
	   ('Pet Holiday','2024-09-28','Central Park')

Insert into Participants (EventID,ShelterID)
Values
      (1,1),
	  (3,4),
	  (4,2),
	  (2,1),
	  (1,3)

