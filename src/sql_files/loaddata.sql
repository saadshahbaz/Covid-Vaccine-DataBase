INSERT INTO Category VALUES('Teacher', 2);
INSERT INTO Category VALUES('Health Care Worker', 1);
INSERT INTO Category VALUES('Elderly', 1);
INSERT INTO Category VALUES('Immunologically Compromised', 1);
INSERT INTO Category VALUES('Physical proximity 1', 2);
INSERT INTO Category VALUES('Children', 2);
INSERT INTO Category VALUES('Essential Service Workers', 3);
INSERT INTO Category VALUES('Physical proximity 2', 3);
INSERT INTO Category VALUES('Everybody else', 4);


INSERT INTO Person VALUES(1, 'Saad Shahbaz', '1999-08-03', '2021-01-01', '438-924-0766', 'M', '3540 Rue Durocher', 'Montreal', 'H2X-2E5','Everybody else');
INSERT INTO Person VALUES(2, 'Emma Watson', '1940-08-21', '2021-02-04', '531-908-0988', 'F', '8450 Rue Anthony', 'Quebec City', 'H5P-2E5','Elderly');
INSERT INTO Person VALUES(3, 'Noah Stranger', '2020-05-15', '2021-02-05', '438-786-0766', 'M', '9808 Rue Sherbrooke', 'Montreal', 'H2X-2E0','Children');
INSERT INTO Person VALUES(4, 'Abigail Hudson', '1998-03-25', '2021-02-01', '538-920-0761', 'F', '1276 de la Montane', 'Sherbrooke', 'H0X-2E8','Physical proximity 1');
INSERT INTO Person VALUES(5, 'Oliver Twist', '1999-08-03', '2021-01-12', '538-924-0762', 'M', '1276 de la Montane', 'Sherbrooke', 'H0X-2E8','Health Care Worker');
INSERT INTO Person VALUES(6, 'Daniel Jackson', '1980-08-03', '2021-02-06', '438-786-0766', 'M', '9808 Rue Sherbrooke', 'Montreal', 'H2X-2E0','Physical proximity 2');
INSERT INTO Person VALUES(7, 'Jane Doe', '1978-08-03', '2021-01-20', '512-924-0766', 'F', '3735 Saint Laurent', 'Montreal', 'H2X-2X8','Teacher');
INSERT INTO Person VALUES(8, 'Aria Grande', '1990-02-03', '2021-02-01', '418-984-0666', 'F', '3540 Rue Laval', 'Laval', 'H7A-0A4','Immunologically Compromised');
INSERT INTO Person VALUES(9, 'Ali Mumtaz', '1999-08-03', '2021-01-01', '438-922-0766', 'M', '3540 Rue Durocher', 'Montreal', 'H2X-2E5','Everybody else');
INSERT INTO Person VALUES(10, 'Firzana Sadiq', '1940-08-21', '2021-02-04', '438-914-0666', 'F', '8450 Rue Anthony', 'Montreal', 'H5P-2E5','Elderly');
INSERT INTO Person VALUES(11, 'Zahra Hussain', '2020-05-15', '2021-02-05', '438-722-0766', 'F', '9808 Rue Sherbrooke', 'Montreal', 'H2X-2E0','Children');
INSERT INTO Person VALUES(12, 'Meganne Johnson', '1998-03-25', '2021-02-06', '538-999-0761', 'F', '1276 de la Montane', 'Montreal', 'H0X-2E8','Physical proximity 1');



INSERT INTO Vaccine VALUES('Pfizer-BioNTech', 2, 40);
INSERT INTO Vaccine VALUES('Moderna', 2, 30);

INSERT INTO Location VALUES('Jewish General', 'H3T-1E2','3755 Chemin de la Côte-Sainte-Catherine','Montreal');
INSERT INTO Location VALUES ('Montreal General Hospital','H3G-1A4','1650 Cedar Ave', 'Montreal');
INSERT INTO LOCATION VALUES ('McGill University', 'H3A-0G4', '845 Sherbrooke St W', 'Montreal');
INSERT INTO LOCATION VALUES ('City of Health Hospital', 'H7M-3L9', '1755 Boulevard Rene-Laennec', 'Laval');
INSERT INTO LOCATION VALUES ('Hopital Fleurimont', 'J1H-5H3', '3001 12 Ave N', 'Sherbooke');
INSERT INTO LOCATION VALUES ('Hospital Saint-Sacrement', 'G1R-2J6', '11 Cote du Palais','Quebec City');



INSERT INTO VACCINEBATCH VALUES ('Pfizer-BioNTech', 991, '2021-01-01', '2022-01-01', '100', 'Jewish General');
INSERT INTO VACCINEBATCH VALUES ('Pfizer-BioNTech', 992, '2021-01-01', '2022-01-01', '120', 'McGill University');
INSERT INTO VACCINEBATCH VALUES ('Pfizer-BioNTech', 993, '2021-05-14', '2022-05-14', '150', 'Montreal General Hospital');
INSERT INTO VACCINEBATCH VALUES ('Moderna', 991, '2021-01-01', '2022-06-01', '90', 'City of Health Hospital');
INSERT INTO VACCINEBATCH VALUES ('Pfizer-BioNTech', 994, '2021-01-01', '2022-01-01', '140', 'Jewish General');
INSERT INTO VACCINEBATCH VALUES ('Moderna', 992, '2021-03-01', '2022-09-01', '90', 'Hopital Fleurimont');
INSERT INTO VACCINEBATCH VALUES ('Pfizer-BioNTech', 995, '2021-02-05', '2022-01-01', '140', 'Hospital Saint-Sacrement');


INSERT INTO HOSPITAL VALUES ('Jewish General');
INSERT INTO HOSPITAL VALUES ('Montreal General Hospital');
INSERT INTO HOSPITAL VALUES ('City of Health Hospital');
INSERT INTO HOSPITAL VALUES ('Hopital Fleurimont');
INSERT INTO HOSPITAL VALUES ('Hospital Saint-Sacrement');



INSERT INTO Vial VALUES ('Pfizer-BioNTech', 991, 1236);
INSERT INTO Vial VALUES ('Pfizer-BioNTech', 991, 1237);
INSERT INTO Vial VALUES ('Pfizer-BioNTech', 991, 1238);
INSERT INTO Vial VALUES ('Pfizer-BioNTech', 991, 1239);
INSERT INTO Vial VALUES ('Pfizer-BioNTech', 992, 1236);
INSERT INTO Vial VALUES ('Pfizer-BioNTech', 993, 1233);
INSERT INTO Vial VALUES ('Moderna', 991, 1233);
INSERT INTO VIAL VALUES ('Pfizer-BioNTech', 994, 1234);
INSERT INTO Vial VALUES ('Moderna', 992, 1233);
INSERT INTO VIAL VALUES ('Pfizer-BioNTech', 995, 1235);
INSERT INTO Vial VALUES ('Pfizer-BioNTech', 992, 1245);
INSERT INTO Vial VALUES ('Pfizer-BioNTech', 992, 1240);
INSERT INTO Vial VALUES ('Pfizer-BioNTech', 992, 1250);
INSERT INTO Vial VALUES ('Pfizer-BioNTech', 992, 1255);
INSERT INTO Vial VALUES ('Pfizer-BioNTech', 992, 1256);
INSERT INTO Vial VALUES ('Pfizer-BioNTech', 993, 1245);
INSERT INTO Vial VALUES ('Pfizer-BioNTech', 993, 1246);
INSERT INTO Vial VALUES ('Pfizer-BioNTech', 993, 1247);
INSERT INTO Vial VALUES ('Pfizer-BioNTech', 991, 1260);
INSERT INTO Vial VALUES ('Pfizer-BioNTech', 991, 1262);
INSERT INTO Vial VALUES ('Pfizer-BioNTech', 991, 1266);
INSERT INTO Vial VALUES ('Pfizer-BioNTech', 991, 1267);
INSERT INTO Vial VALUES ('Pfizer-BioNTech', 991, 1268);




INSERT INTO NURSE VALUES (35408957, 'Sandra Bullek','Jewish General');
INSERT INTO NURSE VALUES (35408958, 'John Dawson','Montreal General Hospital');
INSERT INTO NURSE VALUES (35408959, 'Brie Larson','City of Health Hospital');
INSERT INTO NURSE VALUES (35408960, 'Jake Gyllenhaal','Hospital Saint-Sacrement');
INSERT INTO NURSE VALUES (35408961, 'Hugh Jackman','Jewish General');
INSERT INTO NURSE VALUES (35408962, 'Tom Hanks','Montreal General Hospital');
INSERT INTO NURSE VALUES (35408963, 'Chris Hemsworth','Montreal General Hospital');
INSERT INTO NURSE VALUES (35408964, 'Jennifer Lawrench','City of Health Hospital');


INSERT INTO VaccDate VALUES ('Jewish General', '2021-01-01');
INSERT INTO VaccDate VALUES ('Jewish General', '2021-01-02');
INSERT INTO VaccDate VALUES ('Jewish General', '2021-01-03');
INSERT INTO VaccDate VALUES ('Jewish General', '2021-01-04');
INSERT INTO VaccDate VALUES ('Jewish General', '2021-01-05');
INSERT INTO VaccDate VALUES ('Jewish General', '2021-01-06');
INSERT INTO VaccDate VALUES ('Jewish General', '2021-03-20');
INSERT INTO VaccDate VALUES ('McGill University', '2021-01-25');
INSERT INTO VaccDate VALUES ('McGill University', '2021-02-06');
INSERT INTO VaccDate VALUES ('McGill University', '2021-02-03');
INSERT INTO VaccDate VALUES ('Montreal General Hospital', '2021-01-04');
INSERT INTO VaccDate VALUES ('Montreal General Hospital', '2021-02-06');
INSERT INTO VaccDate VALUES ('Hospital Saint-Sacrement', '2021-02-06');
INSERT INTO VaccDate VALUES ('City of Health Hospital', '2021-02-02');
INSERT INTO VaccDate VALUES ('City of Health Hospital', '2021-02-03');
INSERT INTO VaccDate VALUES ('Hopital Fleurimont', '2021-01-04');


INSERT INTO SLOT VALUES ('Jewish General','2021-01-01','ward-1', '08:00', 1, '2021-01-01',35408959,'Pfizer-BioNTech', 991, 1236);
INSERT INTO SLOT VALUES ('Jewish General','2021-01-01','ward-2', '08:00', 2, '2021-01-01',35408961,'Pfizer-BioNTech', 991, 1237);
INSERT INTO SLOT VALUES ('McGill University','2021-01-25','ward-1', '08:00', 5, '2021-01-25',35408957,'Pfizer-BioNTech', 992, 1236);
INSERT INTO SLOT VALUES ('Hospital Saint-Sacrement', '2021-02-06','ward-1', '08:00', 7, '2021-02-06',35408957,'Pfizer-BioNTech', 995, 1235);
INSERT INTO SLOT VALUES ('McGill University','2021-02-06','ward-1', '08:00', 3, '2021-02-06',35408958,'Pfizer-BioNTech', 992, 1245);
INSERT INTO SLOT VALUES ('McGill University','2021-02-06','ward-1', '09:00', 4, '2021-02-06',35408959,'Pfizer-BioNTech', 992, 1240);
INSERT INTO SLOT VALUES ('McGill University','2021-02-06','ward-3', '08:00', 12, '2021-02-06',35408960,'Pfizer-BioNTech', 992, 1250);
INSERT INTO SLOT VALUES ('McGill University','2021-02-06','ward-2', '08:00', 6, '2021-02-06',35408961,'Pfizer-BioNTech', 992, 1255);
INSERT INTO SLOT VALUES ('Montreal General Hospital','2021-02-06','ward-3', '08:00', 9, '2021-02-06',35408962,'Pfizer-BioNTech', 993, 1245);
INSERT INTO SLOT VALUES ('Montreal General Hospital','2021-02-06','ward-4', '08:00', 10, '2021-02-06',35408963,'Pfizer-BioNTech', 993, 1246);
INSERT INTO SLOT VALUES ('Montreal General Hospital','2021-02-06','ward-1', '09:00', 11, '2021-02-06',35408964,'Pfizer-BioNTech', 993, 1247);
INSERT INTO SLOT VALUES ('Jewish General','2021-03-20','ward-1', '08:00', NULL, NULL,NULL,'Pfizer-BioNTech', 991, 1260);
INSERT INTO SLOT VALUES ('Jewish General','2021-03-20','ward-1', '09:00', NULL, NULL,NULL,'Pfizer-BioNTech', 991, 1262);
INSERT INTO SLOT VALUES ('Jewish General','2021-03-20','ward-3', '08:00', NULL, NULL,NULL,'Pfizer-BioNTech', 991, 1266);
INSERT INTO SLOT VALUES ('Jewish General','2021-03-20','ward-2', '08:00', NULL, NULL,NULL,'Pfizer-BioNTech', 991, 1267);
INSERT INTO SLOT VALUES ('Jewish General','2021-03-20','ward-3', '08:30', NULL, NULL,NULL,'Pfizer-BioNTech', 991, 1268);



INSERT INTO NurseAssignment VALUES (35408959,'Jewish General','2021-01-01');
INSERT INTO NurseAssignment VALUES (35408961,'Jewish General','2021-01-01');
INSERT INTO NurseAssignment VALUES (35408957,'McGill University','2021-01-25');
INSERT INTO NurseAssignment VALUES (35408957,'Hospital Saint-Sacrement','2021-02-06');
INSERT INTO NurseAssignment VALUES (35408958,'McGill University','2021-02-06');
INSERT INTO NurseAssignment VALUES (35408959,'McGill University','2021-02-06');
INSERT INTO NurseAssignment VALUES (35408960,'McGill University','2021-02-06');
INSERT INTO NurseAssignment VALUES (35408961,'McGill University','2021-02-06');
INSERT INTO NurseAssignment VALUES (35408962,'Montreal General Hospital','2021-02-06');
INSERT INTO NurseAssignment VALUES (35408963,'Montreal General Hospital','2021-02-06');
INSERT INTO NurseAssignment VALUES (35408964,'Montreal General Hospital','2021-02-06');
