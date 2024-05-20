CREATE DATABASE Legacy_Hospital;
USE Legacy_Hospital;
CREATE TABLE Doctor(
	Doctor_ID INT,
	First_Name VARCHAR(50),
	Last_Name VARCHAR(50),
	Monthly_pay DECIMAL(10, 4),
	Hire_date DATE,

);
EXEC sp_rename 'Doctor', 'Doctors';
SELECT * FROM Doctors
ALTER TABLE Doctors ADD Phone_numbers VARCHAR(50),
Address VARCHAR(50);
ALTER TABLE Doctors ADD specialization VARCHAR(50);
CREATE DATABASE Legacy_Hospital;
USE Legacy_Hospital;

CREATE TABLE Doctors (
    Doctor_ID INT,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Monthly_pay DECIMAL(10, 4),
    Hire_date DATE
);

ALTER TABLE Doctors ADD Phone_numbers VARCHAR(50),
                     Address VARCHAR(50),
                     specialization VARCHAR(50);

INSERT INTO Doctors (First_Name, Last_Name, specialization, Monthly_pay, Hire_date, Address, Phone_numbers) 
VALUES
    ('Dr Marvin', 'Denzel', 'Endocrinologist', '300000.000', '2015-09-20', 'Kigali', '1021-202909'),
    ('Dr Olivier', 'Kent', 'Dentist', '290000.000', '2015-08-01', 'Karongi', '20122-300444'),
    ('Dr James', 'Crint', 'Physician', '250000.899', '2015-01-02', 'musanze', '32090-23092'),
    ('Dr Max', 'Alison', 'Pulmonologist', '295000.008', '2015-02-12', 'Nyabihu', '4909-939489'),
    ('Dr Rodriguez', 'Pedro', 'Obstetrician', '293000.008', '2015-03-10', 'Nyagatare', '3909-939489'),
    ('Dr Bond', 'James', 'Pediatrician', '291000.008', '2015-09-13', 'Kamonyi', '4709-939489'),
    ('Dr Ramires', 'Carlos', 'Gynecologist', '290000.008', '2015-05-15', 'Rubavu', '4009-939489'),
    ('Dr Milos', 'Jackson', 'Orthopedic', '292000.008', '2015-11-18', 'Butare', '2379-939489'),
    ('Dr Rana', 'Valdez', 'Urologist', '295000.008', '2015-01-09', 'Huye', '5009-939489'),
    ('Dr Joshua', 'Marks', 'Neurologist', '300000.008', '2000-01-13', 'Kabarore', '4909-939489'),
    ('Dr Jimy', 'Klarks', 'Chiropractor', '240000.008', '2015-02-20', 'Nyabihu', '4909-939489'),
    ('Dr Laura', 'Madison', 'Psychotherapist', '222000.008', '2015-07-13', 'Musanze', '4909-939489'),
    ('Dr Mayback', 'Dickson', 'Nutritionist', '200000.008', '2016-02-13', 'Bugesera', '4909-939489');

ALTER TABLE Doctors
ADD Temp_ID INT IDENTITY(1,1);
UPDATE Doctors
SET Doctor_ID = Temp_ID;

CREATE TABLE Patients(
Names VARCHAR(50),
Phone_number VARCHAR(50),
Address VARCHAR(20),
Sickness VARCHAR(20),
Weight INT
);

INSERT INTO Patients(Names, Phone_number, Address, Weight)
Values('Eric Basumba', '21932-37834', 'Rwanda', 80),
      ('Elizabeth', '23723-3333872', 'Rwanda', 100),
	  ('Easton', '3983293-2382309', 'Rwanda', 90),
	  ('Elenoi', '629840-34093483', 'Rwanda', 87),
	  ('Eleanor', '23730-343433', 'Rwanda', 97),
	  ('Emily ', '331932-37838', 'Austria', 85),
	  ('Emerson', '01932-37838', 'Switzerland', 85),
	  ('Eliana', '01932-37838', 'USA', 75),
	  ('Elias Harerarimany', '01932-37838', 'Poland', 75),
	  ('Elize barikunda ', '01932-37838', 'Austria', 65),
	  ('Elidephonse Mukuruwabo', '01932-37838', 'Germany', 95),
	  ('Bailey ', '01932-37838', 'Algeria', 105),
	  ('Beau', '21932-37838', 'Nigeria', 115),
	  ('Aiden', '331932-37838', 'Niger', 75),
	  ('Alice', '12932-37838', 'Ghana', 95),
	  ('Abigai', '12932-37838', 'Sirilank', 95),
	  ('Blake', '341932-37838', 'Egypt', 90),
	  ('Dylan', '347932-37838', 'Chadi', 95),
	  ('Christian', '77932-37838', 'Belarus', 90),
	  ('chris', '99932-37838', 'Hungary', 100),
	  ('clara', '0091932-37838', 'France', 110),
	  ('-cleo', '6879732-37838', 'England', 101);

	  SELECT * FROM Patients;

CREATE TABLE Diseases(
Name_of_disease VARCHAR(50),
Virus VARCHAR(50),
Vector VARCHAR(30),
contagion VARCHAR(40),
Treatment VARCHAR(200),
Signs_and_sympotms VARCHAR(200)
);
INSERT INTO Diseases(Name_of_disease, Virus, Vector, contagion, Treatment, Signs_and_sympotms)
Values('Alzheimer', 'Has no Virus','Has no Vector', 'Non Contagious', 'Managing symptoms', 'Memory loss'),
      ('Leukemia', 'Has no virus', 'Has no Vector', 'Non Infectious', 'Chemotherapy', 'Pale skin'),
	  ('Dementias', 'Has no virus', 'Has no Vector', 'Non Contagious', 'Medictaion therapy', 'Memory loss'),
	  ('Brain Cancer', 'Has no Virus', 'Has no Vector', 'Non Infectious', 'Surgery', 'Seizures'),
	  ('Vitiligo', 'Has no Virus', 'Has no Vetor', 'Non contagious', 'Topical Corticosteroids', 'Loss of skin Color'),
	  ('Hives', 'Has no Virus', 'Has no Vector', 'Non Infectious', 'antihistamines', 'red welts or bumps on the skin'),
	  ('Warts', 'human papillomavirus (HPV)', 'Can be spread through contact', 'Contagious', 'cryotherapy (freezing)', ' rough growths on the skin'),
	  ('Cellulitis', 'Has no Virus', 'No Vector', 'Non Infectious', 'Antibiotics', 'tender'),
	  ('Chickenpox (Varicella)', 'varicella-zoster virus (VZV)', 'respiratory droplets', 'during the blister phase of the rash ', 'antiviral medications', 'Rash'),
	  ('Lupus (Systemic Lupus Erythematosus)', 'Has no Virus', 'Has no Vector', 'Non Contagious', 'Medications', 'Joint pain'),
	  ('Diabetes', 'Has no Virus', 'Has no Vector', 'Non Contagious', ' insulin therapy', 'Frequent Urination'),
	  ('Prostate Cancer', 'Has no Virus', 'Has no Vector', 'Non Infectious ','Radition therapy', 'Blood in Urine'),
	  ('Mouth Sores', 'herpes simplex virus (HSV)', 'Has no Vector', 'Can be Infectious', 'mouth rinses', 'Painful sores or ulcers in Mouth'),
	  ('Tooth Sensitivity', 'Has no Virus', 'Has no Vector', 'Non Contagious', 'fluoride treatments', 'Pain')
	  SELECT * FROM Diseases

CREATE TABLE Laboratory_Material(
Names VARCHAR(50),
Suplier VARCHAR(50),
Origin VARCHAR(50),
);

INSERT INTO Laboratory_Material(Names, Suplier, Origin)
Values('Microscopes','GuangZou','China'),
	  ('Incubators','Benjamin','German'),
	  ('Bunsen burner','Geangou','China'),
	  ('Beakers','Philip','Japan'),
	  ('Flask','Nagasaki','Korea'),
	  ('Hot','Alexis','Korea'),
	  ('Spatula','Zumian','China'),
	  ('Acids','Job','German'),
	  ('Bases','Kai','Vietnam'),
	  ('Stirrers','Arthur','England'),
	  ('Freezers','Mienn','China'),
	  ('Centrifuges','Jams','USA'),
	  ('Water bath','Lionel','England'),
	  ('Fumes hood','Gieshou','China'),
	  ('Scales','Alexandre','German'),
	  ('Volumetric flask','Ken','Vietnam'),
	  ('Glooves','Rogers','USA'),
	  ('Microplates','Steven','England'),
	  ('Watch glass','Gabrielle','German'),
	  ('Crucible','Kionmu','China')

CREATE TABLE Staff_Members(
Members_ID INT,
Nurses VARCHAR(50),
Acountants VARCHAR(50),
Managers VARCHAR(50),
Technician VARCHAR(50),
Customer_representatives VARCHAR(50),
);
INSERT INTO Staff_Members(Nurses, Acountants, Managers, Technician, Customer_representatives)
Values('Sheriff', 'Rhada', 'Mavzuna', 'Basumba', 'Buranga'),
	  ('Patience','Murad','Emmy', 'Hajiel', 'Easton'),
	  ('Mark','Zaninka','Manuell', 'Elenoi', 'Kevin'),
	  ('Axel','Uwase','Pius', 'Loic', 'Ryan'),
	  ('Arrnold','Johns', 'Baptist', 'Sylvester', 'Jeanne'),
	  ('Eric','Bella','Mylon', 'Jeanine', 'Emelyne'),
	  ('Blake','Ezekiel','Abigail', 'Abijuru','Maxwell'),
	  ('Dylan','Clara','Andrew', 'Clare', 'Anna'),
	  ('Frankie','Levi','Daisy', 'Annah', 'Diedonne'),
	  ('Nevaeh','Florence','Orlando', 'Humprey', 'Bill'),
	  ('Hallie','Natalie','Gianna', 'Shema', 'Ngoga'),
	  ('Harmony','Gavin','Odette', 'Billy', 'Habimana'),
	  ('Julia','Maddox','Oanez', 'Umugabekazi', 'Muhire'),
	  ('Lydia','Ozzy','Niya', 'Armand', 'Ptak'),
	  ('Kane','Niall','Iris', 'Sandrine', 'Rulinda'),
	  ('Oriana','Nitara','Lorenzo', 'Rubangura', 'Karemera'),
	  ('Oberon','Ophelia','Mae', 'Habarugrira', 'Doreen')
	  SELECT * FROM Staff_Members
ALTER TABLE Staff_Members ADD Ten_ID INT IDENTITY(1,1);
UPDATE Staff_Members
SET Members_ID = Ten_ID;

CREATE TABLE Employees(
drivers VARCHAR(50), 
Waiters VARCHAR(50),
cooks  VARCHAR(50),
Janitor VARCHAR(50)
);

INSERT INTO Employees( drivers, Waiters, cooks, Janitor)
Values('Caleb','Bale','Murinho','Adrien'),
	  ('Olivier','Paul','Makombe','John'),
	  ('Mukombozi','Murenzi','Danny','Marshal'),
	  ('Mushabe','Alpha','David','Migambi'),
	  ('Mugabe','Maurice','Jayden','Abdul'),
	  ('Alvin','Crlos','Crayton','Tom'),
	  ('Payton','Kayton','Haary','Armstrong')

	  SELECT*FROM Doctors
	  SELECT*FROM Patients
	  SELECT*FROM Staff_Members
	  SELECT*FROM Laboratory_Material
	  SELECT*FROM Employees