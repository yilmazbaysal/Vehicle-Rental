BEGIN
  INSERT_COUNTRY('Turkey');
  INSERT_COUNTRY('Cyprus');
  INSERT_COUNTRY('Azerbaijan');
  INSERT_COUNTRY('Germany');
  INSERT_COUNTRY('Italy');
  INSERT_COUNTRY('France');
  INSERT_COUNTRY('England');
  INSERT_COUNTRY('Bulgaria');
  INSERT_COUNTRY('Greece');
  INSERT_COUNTRY('Canada');
  COMMIT;
END;
/

BEGIN
  INSERT_CITY('Ankara', '06', 1);
  INSERT_CITY('Istanbul', '34', 1);
  INSERT_CITY('Izmir', '35', 1);
  INSERT_CITY('Nicosia', '22', 2);
  INSERT_CITY('Baku', '10', 3);
  INSERT_CITY('Munchen', 'M', 4);
  INSERT_CITY('Berlin', 'B', 4);
  INSERT_CITY('Rome', 'RM', 5);
  INSERT_CITY('Paris', '25', 6);
  INSERT_CITY('Londra', 'GB', 7);
  INSERT_CITY('Mancester', 'GB', 7);
  INSERT_CITY('Dobrich', 'TX', 8);
  INSERT_CITY('Athens', 'ZZ', 9);
  INSERT_CITY('Calgary', 'CND', 10);
  COMMIT;
END;
/

BEGIN
  INSERT_COUNTY('Etimesgut', 1);
  INSERT_COUNTY('Çankaya', 1);
  INSERT_COUNTY('Yenimahalle', 1);
  INSERT_COUNTY('Keçiören', 1);
  INSERT_COUNTY('Pendik', 2);
  INSERT_COUNTY('Beşiktaş', 2);
  INSERT_COUNTY('Esenyurt', 2);
  INSERT_COUNTY('Avcılar', 2);
  INSERT_COUNTY('Kartal', 2);
  INSERT_COUNTY('Karşıyaka', 3);
  INSERT_COUNTY('Göztepe', 3);
  INSERT_COUNTY('Foça', 3);
  INSERT_COUNTY('Çeşme', 3);
  INSERT_COUNTY('Buca', 3);
  INSERT_COUNTY('Erdemli', 4);
  INSERT_COUNTY('Karadağ', 5);
  INSERT_COUNTY('Neuhausen', 6);
  INSERT_COUNTY('Mitte', 7);
  INSERT_COUNTY('Colosseo', 8);
  INSERT_COUNTY('St-Germain', 9);
  INSERT_COUNTY('Montparnasse', 9);
  INSERT_COUNTY('Greenwich', 10);
  INSERT_COUNTY('Manchester', 11);
  INSERT_COUNTY('Dobrich', 12);
  INSERT_COUNTY('Agaleo', 13);
  INSERT_COUNTY('City Centre', 14);
  COMMIT;
END;
/

DECLARE
  out_id NUMBER;
BEGIN
  INSERT_BRANCH('Turkuaz Oto Kiralama', 1, 'Pinarbasi Street 10 / 5', out_id);
  INSERT_BRANCH('Prestij Oto Kiralama', 1, 'Vatan Street 205', out_id);
  INSERT_BRANCH('Fast Rent a Car', 2, 'ST 150', out_id);
  INSERT_BRANCH('BESA Oto Kiralama', 3, '1071 Street No:10', out_id);
  INSERT_BRANCH('Filo Oto Kiralama', 4, 'Ceyhan ST 45 / 9', out_id);
  INSERT_BRANCH('Rota-Grup Kiralama', 5, 'Yunus Street No:5', out_id);
  INSERT_BRANCH('Erdem Oto Kiralama', 6, 'Street 185', out_id);
  INSERT_BRANCH('Okyanus Oto Kiralama', 7, 'Coastal Path No:165', out_id);
  INSERT_BRANCH('AK Oto Kiralama', 8, 'Fatih 5/8', out_id);
  INSERT_BRANCH('Aslan Oto Kiralama', 9, 'ST 1453 No:9', out_id);
  INSERT_BRANCH('Deniz Oto Kiralama', 10, 'Deniz Street 563', out_id);
  INSERT_BRANCH('ECO Oto Kiralama', 11, 'No : 150 / 5', out_id);
  INSERT_BRANCH('Sedef Oto Kiralama', 12, 'ST:160 No:5', out_id);
  INSERT_BRANCH('Almira Oto Kiralama', 13, 'Kartal St. 19 / 03', out_id);
  INSERT_BRANCH('Rent Go', 14, '18651 St. 10 /5', out_id);
  INSERT_BRANCH('Baku CAR', 15, '15121 St. No:56', out_id);
  INSERT_BRANCH('Avtomobil Kirayesi', 15, '5654 St. No:100', out_id);
  INSERT_BRANCH('Garenta', 16, '865 St. No:68', out_id);
  INSERT_BRANCH('Payless Rent a Car', 17, '75 St. No:X3', out_id);
  INSERT_BRANCH('Sixt Ren a Car', 18, '2654 St. 8 / 4', out_id);
  INSERT_BRANCH('Advantage', 19, '78984 St. No:B330', out_id);
  INSERT_BRANCH('Rico Cars', 20, '2355A St. No:653', out_id);
  INSERT_BRANCH('G&T Rent a Car', 21, '1065YK St. No:1001', out_id);
  INSERT_BRANCH('Oscar Rental', 22, '37512 St. No:C525', out_id);
  INSERT_BRANCH('Alamo', 22, '654 St. No:85', out_id);
  INSERT_BRANCH('Hertz', 23, '7521B St. No:78', out_id);
  INSERT_BRANCH('Avis', 24, '6545 St. No:55', out_id);
  INSERT_BRANCH('Thrifty', 24, 'A45 St. No:A23', out_id);
  INSERT_BRANCH('Kosmos Rent a Car', 25, '1001 St. No:3A', out_id);
  INSERT_BRANCH('Bot Rent a Car', 26, 'K105 St. No:100', out_id);
  COMMIT;
END;
/

BEGIN
  INSERT_FRAME_TYPE('Sedan', 4);
  INSERT_FRAME_TYPE('Hatchback', 5);
  INSERT_FRAME_TYPE('Station Wagon', 5);
  INSERT_FRAME_TYPE('Hatchback', 3);
  INSERT_FRAME_TYPE('Cabrio', 3);
  INSERT_FRAME_TYPE('Coupe', 2);
  INSERT_FRAME_TYPE('Coupe', 4);
  INSERT_FRAME_TYPE('Roadster', 2);
  INSERT_FRAME_TYPE('Crossover', 5);
  INSERT_FRAME_TYPE('MPV', 5);
  COMMIT;
END;
/

BEGIN
  INSERT_GEAR('Manuel', 6);
  INSERT_GEAR('Manuel', 7);
  INSERT_GEAR('Manuel', 9);
  INSERT_GEAR('Manuel', 10);
  INSERT_GEAR('Manuel', 13);
  INSERT_GEAR('Manuel', 15);
  INSERT_GEAR('Manuel', 18);
  INSERT_GEAR('Automatic', 6);
  INSERT_GEAR('Automatic', 7);
  INSERT_GEAR('Semiautomatic', 6);
  INSERT_GEAR('Semiautomatic', 7);
  COMMIT;
END;
/

BEGIN
  INSERT_BRAND('Alfa Romeo', 'Italy');
  INSERT_BRAND('BMW', 'Germany');
  INSERT_BRAND('Audi', 'Germany');
  INSERT_BRAND('Chevrolet', 'USA');
  INSERT_BRAND('Citroen', 'France');
  INSERT_BRAND('Dacia', 'Romania');
  INSERT_BRAND('Fiat', 'Italy');
  INSERT_BRAND('Ford', 'USA');
  INSERT_BRAND('Honda', 'Japan');
  INSERT_BRAND('Hyundai', 'South Korea');
  INSERT_BRAND('KIA', 'South Korea');
  INSERT_BRAND('Mercedes-Benz', 'Germany');
  INSERT_BRAND('Mitsubishi', 'Japan');
  INSERT_BRAND('Nissan', 'Japan');
  INSERT_BRAND('Opel', 'Germany');
  INSERT_BRAND('Peugeot', 'France');
  INSERT_BRAND('Renault', 'France');
  INSERT_BRAND('Seat', 'Spain');
  INSERT_BRAND('Skoda', 'Germany');
  INSERT_BRAND('Suzuki', 'Japan');
  INSERT_BRAND('Tofaş', 'Turkey');
  INSERT_BRAND('Toyota', 'Japan');
  INSERT_BRAND('Volkswagen', 'Germany');
  INSERT_BRAND('Volvo', 'Sweden');
  INSERT_BRAND('Ferrari', 'Italy');
  INSERT_BRAND('Mondial', 'Turkey');
  INSERT_BRAND('Kuba', 'Turkey');
  INSERT_BRAND('Yamaha', 'Japan');
  INSERT_BRAND('Yuki', 'Turkey');
  INSERT_BRAND('Kanuni', 'Turkey');
  INSERT_BRAND('Kawasaki', 'Japan');
  INSERT_BRAND('Otokar', 'Turkey');
  INSERT_BRAND('BMC', 'Turkey');
  INSERT_BRAND('MAN', 'Germany');
  INSERT_BRAND('Iveco', 'Italy');
  INSERT_BRAND('DAF', 'Holland');
  COMMIT;
END;
/

BEGIN
  INSERT_ENGINE('1.0', '70hp');
  INSERT_ENGINE('1.0', '80hp');
  INSERT_ENGINE('1.0', '90hp');
  INSERT_ENGINE('1.0', '100hp');
  INSERT_ENGINE('1.0', '110hp');
  INSERT_ENGINE('1.2', '80hp');
  INSERT_ENGINE('1.2', '90hp');
  INSERT_ENGINE('1.2', '100hp');
  INSERT_ENGINE('1.2', '110hp');
  INSERT_ENGINE('1.2', '120hp');
  INSERT_ENGINE('1.4', '80hp');
  INSERT_ENGINE('1.4', '90hp');
  INSERT_ENGINE('1.4', '100hp');
  INSERT_ENGINE('1.4', '110hp');
  INSERT_ENGINE('1.4', '120hp');
  INSERT_ENGINE('1.4', '130hp');
  INSERT_ENGINE('1.4', '140hp');
  INSERT_ENGINE('1.4', '150hp');
  INSERT_ENGINE('1.4', '160hp');
  INSERT_ENGINE('1.4', '170hp');
  INSERT_ENGINE('1.5', '80hp');
  INSERT_ENGINE('1.5', '90hp');
  INSERT_ENGINE('1.5', '100hp');
  INSERT_ENGINE('1.5', '110hp');
  INSERT_ENGINE('1.5', '120hp');
  INSERT_ENGINE('1.5', '130hp');
  INSERT_ENGINE('1.5', '140hp');
  INSERT_ENGINE('1.5', '150hp');
  INSERT_ENGINE('1.5', '160hp');
  INSERT_ENGINE('1.5', '170hp');
  INSERT_ENGINE('1.5', '180hp');
  INSERT_ENGINE('1.5', '190hp');
  INSERT_ENGINE('1.6', '90hp');
  INSERT_ENGINE('1.6', '100hp');
  INSERT_ENGINE('1.6', '110hp');
  INSERT_ENGINE('1.6', '120hp');
  INSERT_ENGINE('1.6', '130hp');
  INSERT_ENGINE('1.6', '140hp');
  INSERT_ENGINE('1.6', '150hp');
  INSERT_ENGINE('1.6', '160hp');
  INSERT_ENGINE('1.6', '170hp');
  INSERT_ENGINE('1.6', '180hp');
  INSERT_ENGINE('1.6', '190hp');
  INSERT_ENGINE('1.6', '200hp');
  INSERT_ENGINE('1.6', '210hp');
  INSERT_ENGINE('1.6', '220hp');
  INSERT_ENGINE('1.8', '140hp');
  INSERT_ENGINE('1.8', '150hp');
  INSERT_ENGINE('1.8', '160hp');
  INSERT_ENGINE('1.8', '170hp');
  INSERT_ENGINE('1.8', '180hp');
  INSERT_ENGINE('1.8', '190hp');
  INSERT_ENGINE('1.8', '200hp');
  INSERT_ENGINE('1.8', '210hp');
  INSERT_ENGINE('1.8', '220hp');
  INSERT_ENGINE('1.8', '230hp');
  INSERT_ENGINE('1.8', '240hp');
  INSERT_ENGINE('1.8', '250hp');
  INSERT_ENGINE('2.0', '170hp');
  INSERT_ENGINE('2.0', '180hp');
  INSERT_ENGINE('2.0', '190hp');
  INSERT_ENGINE('2.0', '200hp');
  INSERT_ENGINE('2.0', '210hp');
  INSERT_ENGINE('2.0', '220hp');
  INSERT_ENGINE('2.0', '230hp');
  INSERT_ENGINE('2.0', '240hp');
  INSERT_ENGINE('2.0', '250hp');
  INSERT_ENGINE('2.0', '260hp');
  INSERT_ENGINE('2.0', '270hp');
  INSERT_ENGINE('2.5', '200hp');
  INSERT_ENGINE('2.5', '210hp');
  INSERT_ENGINE('2.5', '220hp');
  INSERT_ENGINE('2.5', '230hp');
  INSERT_ENGINE('2.5', '240hp');
  INSERT_ENGINE('2.5', '250hp');
  INSERT_ENGINE('2.5', '260hp');
  INSERT_ENGINE('2.5', '270hp');
  INSERT_ENGINE('2.5', '280hp');
  INSERT_ENGINE('2.5', '290hp');
  INSERT_ENGINE('2.5', '300hp');
  INSERT_ENGINE('1.3', '70hp');
  INSERT_ENGINE('1.3', '80hp');
  INSERT_ENGINE('1.3', '90hp');
  INSERT_ENGINE('1.3', '100hp');
  INSERT_ENGINE('1.3', '110hp');
  INSERT_ENGINE('1.3', '120hp');
  INSERT_ENGINE('1.3', '130hp');
  INSERT_ENGINE('1.3', '140hp');
  INSERT_ENGINE('4.5', '570hp');
  INSERT_ENGINE('0.1', '25hp');
  INSERT_ENGINE('0.2', '150hp');
  INSERT_ENGINE('0.3', '50hp');
  INSERT_ENGINE('4.0', '150hp');
  INSERT_ENGINE('4.0', '300hp');
  INSERT_ENGINE('5.0', '500hp');
  COMMIT;
END;
/


BEGIN
  INSERT_MODEL('Giulietta', 1, 35, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Giulietta', 1, 35, 1, 'Gasoline', 'CAR');
  INSERT_MODEL('Giulietta', 1, 35, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('320', 2, 60, 1, 'Diesel', 'CAR');
  INSERT_MODEL('320', 2, 60, 2, 'Diesel', 'CAR');
  INSERT_MODEL('320', 2, 60, 3, 'Diesel', 'CAR');
  INSERT_MODEL('320', 2, 60, 1, 'Gasoline', 'CAR');
  INSERT_MODEL('320', 2, 60, 2, 'Gasoline', 'CAR');
  INSERT_MODEL('320', 2, 60, 3, 'Gasoline', 'CAR');
  INSERT_MODEL('520', 2, 59, 4, 'Diesel', 'CAR');
  INSERT_MODEL('520', 2, 59, 5, 'Diesel', 'CAR');
  INSERT_MODEL('520', 2, 59, 6, 'Diesel', 'CAR');
  INSERT_MODEL('520', 2, 59, 4, 'Gasoline', 'CAR');
  INSERT_MODEL('520', 2, 59, 5, 'Gasoline', 'CAR');
  INSERT_MODEL('520', 2, 59, 6, 'Gasoline', 'CAR');
  INSERT_MODEL('A3', 3, 34, 1, 'Diesel', 'CAR');
  INSERT_MODEL('A3', 3, 34, 2, 'Diesel', 'CAR');
  INSERT_MODEL('A3', 3, 34, 3, 'Diesel', 'CAR');
  INSERT_MODEL('A3', 3, 34, 1, 'Gasoline', 'CAR');
  INSERT_MODEL('A3', 3, 34, 2, 'Gasoline', 'CAR');
  INSERT_MODEL('A3', 3, 34, 3, 'Gasoline', 'CAR');
  INSERT_MODEL('Cruze', 4, 36, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Cruze', 4, 36, 2, 'Diesel', 'CAR');
  INSERT_MODEL('Cruze', 4, 36, 1, 'Gasoline', 'CAR');
  INSERT_MODEL('Cruze', 4, 36, 2, 'Gasoline', 'CAR');
  INSERT_MODEL('Cruze', 4, 36, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Cruze', 4, 36, 2, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('C-Elysee', 5, 33, 1, 'Diesel', 'CAR');
  INSERT_MODEL('C-Elysee', 5, 33, 1, 'Gasoline', 'CAR');
  INSERT_MODEL('C-Elysee', 5, 33, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('C4', 5, 35, 1, 'Diesel', 'CAR');
  INSERT_MODEL('C4', 5, 35, 2, 'Diesel', 'CAR');
  INSERT_MODEL('C4', 5, 35, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('C4', 5, 35, 2, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Sandero-Stepway', 6, 22, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Sandero-Stepway', 6, 22, 2, 'Diesel', 'CAR');
  INSERT_MODEL('Sandero-Stepway', 6, 22, 3, 'Diesel', 'CAR');
  INSERT_MODEL('Albea', 7, 81, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Albea', 7, 6, 1, 'Gasoline', 'CAR');
  INSERT_MODEL('Albea', 7, 6, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Egea', 7, 83, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Egea', 7, 83, 2, 'Diesel', 'CAR');
  INSERT_MODEL('Egea', 7, 83, 3, 'Diesel', 'CAR');
  INSERT_MODEL('Egea', 7, 12, 1, 'Gasoline', 'CAR');
  INSERT_MODEL('Egea', 7, 12, 2, 'Gasoline', 'CAR');
  INSERT_MODEL('Egea', 7, 12, 3, 'Gasoline', 'CAR');
  INSERT_MODEL('Linea', 7, 83, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Linea', 7, 12, 1, 'Gasoline', 'CAR');
  INSERT_MODEL('Linea', 7, 12, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Fiesta', 8, 11, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Fiesta', 8, 11, 2, 'Diesel', 'CAR');
  INSERT_MODEL('Fiesta', 8, 11, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Fiesta', 8, 11, 2, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Focus', 8, 33, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Focus', 8, 33, 2, 'Diesel', 'CAR');
  INSERT_MODEL('Focus', 8, 36, 1, 'Gasoline', 'CAR');
  INSERT_MODEL('Focus', 8, 36, 2, 'Gasoline', 'CAR');
  INSERT_MODEL('Focus', 8, 36, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Focus', 8, 36, 2, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Civic', 9, 36, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Civic', 9, 36, 2, 'Diesel', 'CAR');
  INSERT_MODEL('Civic', 9, 36, 1, 'Gasoline', 'CAR');
  INSERT_MODEL('Civic', 9, 36, 2, 'Gasoline', 'CAR');
  INSERT_MODEL('Civic', 9, 36, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Civic', 9, 36, 2, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Accent', 10, 21, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Accent', 10, 82, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Getz', 10, 22, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Getz', 10, 22, 2, 'Diesel', 'CAR');
  INSERT_MODEL('Getz', 10, 13, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Getz', 10, 13, 2, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('i30', 10, 35, 1, 'Diesel', 'CAR');
  INSERT_MODEL('i30', 10, 35, 2, 'Diesel', 'CAR');
  INSERT_MODEL('i30', 10, 35, 1, 'Gasoline', 'CAR');
  INSERT_MODEL('i30', 10, 35, 2, 'Gasoline', 'CAR');
  INSERT_MODEL('Rio', 11, 14, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Rio', 11, 14, 2, 'Diesel', 'CAR');
  INSERT_MODEL('C 180', 12, 40, 4, 'Diesel', 'CAR');
  INSERT_MODEL('C 180', 12, 40, 5, 'Diesel', 'CAR');
  INSERT_MODEL('C 180', 12, 40, 6, 'Diesel', 'CAR');
  INSERT_MODEL('C 180', 12, 40, 4, 'Gasoline', 'CAR');
  INSERT_MODEL('C 180', 12, 40, 5, 'Gasoline', 'CAR');
  INSERT_MODEL('C 180', 12, 40, 6, 'Gasoline', 'CAR');
  INSERT_MODEL('CLA 200', 12, 40, 4, 'Diesel', 'CAR');
  INSERT_MODEL('CLA 200', 12, 40, 5, 'Diesel', 'CAR');
  INSERT_MODEL('CLA 200', 12, 40, 6, 'Diesel', 'CAR');
  INSERT_MODEL('Lancer', 13, 36, 1, 'Gasoline', 'CAR');
  INSERT_MODEL('Lancer', 13, 36, 2, 'Gasoline', 'CAR');
  INSERT_MODEL('Lancer', 13, 36, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Lancer', 13, 36, 2, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Astra', 15, 35, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Astra', 15, 35, 2, 'Diesel', 'CAR');
  INSERT_MODEL('Astra', 15, 35, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Astra', 15, 35, 2, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Corsa', 15, 83, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Corsa', 15, 83, 2, 'Diesel', 'CAR');
  INSERT_MODEL('Corsa', 15, 12, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Corsa', 15, 12, 2, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Vectra', 15, 34, 1, 'Gasoline', 'CAR');
  INSERT_MODEL('Vectra', 15, 34, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Insignia', 15, 37, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Insignia', 15, 37, 2, 'Diesel', 'CAR');
  INSERT_MODEL('Insignia', 15, 42, 1, 'Gasoline', 'CAR');
  INSERT_MODEL('Insignia', 15, 42, 2, 'Gasoline', 'CAR');
  INSERT_MODEL('207', 16, 12, 1, 'Diesel', 'CAR');
  INSERT_MODEL('207', 16, 12, 2, 'Diesel', 'CAR');
  INSERT_MODEL('207', 16, 12, 3, 'Diesel', 'CAR');
  INSERT_MODEL('207', 16, 12, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('307', 16, 35, 1, 'Diesel', 'CAR');
  INSERT_MODEL('307', 16, 35, 2, 'Diesel', 'CAR');
  INSERT_MODEL('307', 16, 35, 3, 'Diesel', 'CAR');
  INSERT_MODEL('307', 16, 35, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Clio', 17, 21, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Clio', 17, 11, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Fluence', 17, 22, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Fluence', 17, 22, 2, 'Diesel', 'CAR');
  INSERT_MODEL('Fluence', 17, 35, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Fluence', 17, 35, 2, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Megane', 17, 24, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Megane', 17, 24, 2, 'Diesel', 'CAR');
  INSERT_MODEL('Megane', 17, 24, 3, 'Diesel', 'CAR');
  INSERT_MODEL('Megane', 17, 35, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Megane', 17, 35, 2, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Leon', 18, 34, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Leon', 18, 34, 2, 'Diesel', 'CAR');
  INSERT_MODEL('Leon', 18, 34, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Leon', 18, 34, 2, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Octavia', 19, 35, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Octavia', 19, 35, 2, 'Diesel', 'CAR');
  INSERT_MODEL('Octavia', 19, 35, 3, 'Diesel', 'CAR');
  INSERT_MODEL('Octavia', 19, 35, 1, 'Gasoline', 'CAR');
  INSERT_MODEL('Octavia', 19, 35, 2, 'Gasoline', 'CAR');
  INSERT_MODEL('Octavia', 19, 35, 3, 'Gasoline', 'CAR');
  INSERT_MODEL('Doğan', 21, 33, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Şahin', 21, 33, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Kartal', 21, 33, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Corolla', 22, 12, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Corolla', 22, 12, 2, 'Diesel', 'CAR');
  INSERT_MODEL('Corolla', 22, 37, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Corolla', 22, 37, 2, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Auris', 22, 12, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Golf', 23, 35, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Golf', 23, 35, 2, 'Diesel', 'CAR');
  INSERT_MODEL('Golf', 23, 35, 1, 'Gasoline', 'CAR');
  INSERT_MODEL('Golf', 23, 35, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Golf', 23, 35, 2, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('Jetta', 23, 35, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Jetta', 23, 35, 2, 'Diesel', 'CAR');
  INSERT_MODEL('Jetta', 23, 35, 3, 'Diesel', 'CAR');
  INSERT_MODEL('Jetta', 23, 34, 1, 'Gasoline', 'CAR');
  INSERT_MODEL('Jetta', 23, 34, 2, 'Gasoline', 'CAR');
  INSERT_MODEL('Jetta', 23, 34, 3, 'Gasoline', 'CAR');
  INSERT_MODEL('Passat', 23, 36, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Passat', 23, 36, 2, 'Diesel', 'CAR');
  INSERT_MODEL('Passat', 23, 36, 3, 'Diesel', 'CAR');
  INSERT_MODEL('Passat', 23, 34, 1, 'Gasoline', 'CAR');
  INSERT_MODEL('Passat', 23, 34, 2, 'Gasoline', 'CAR');
  INSERT_MODEL('Passat', 23, 34, 3, 'Gasoline', 'CAR');
  INSERT_MODEL('S40', 24, 35, 1, 'Diesel', 'CAR');
  INSERT_MODEL('S40', 24, 35, 2, 'Diesel', 'CAR');
  INSERT_MODEL('S40', 24, 35, 1, 'Gasoline', 'CAR');
  INSERT_MODEL('S40', 24, 35, 2, 'Gasoline', 'CAR');
  INSERT_MODEL('458 Italia', 25, 89, 4, 'Gasoline', 'CAR');
  INSERT_MODEL('459 Italia', 25, 89, 5, 'Gasoline', 'CAR');
  INSERT_MODEL('460 Italia', 25, 89, 6, 'Gasoline', 'CAR');
  INSERT_MODEL('Q7', 3, 75, 4, 'Diesel', 'CAR');
  INSERT_MODEL('Q7', 3, 75, 5, 'Diesel', 'CAR');
  INSERT_MODEL('Q7', 3, 75, 4, 'Gasoline', 'CAR');
  INSERT_MODEL('Q7', 3, 75, 5, 'Gasoline', 'CAR');
  INSERT_MODEL('X5', 2, 77, 4, 'Diesel', 'CAR');
  INSERT_MODEL('X5', 2, 77, 5, 'Diesel', 'CAR');
  INSERT_MODEL('X5', 2, 77, 6, 'Diesel', 'CAR');
  INSERT_MODEL('Captiva', 4, 62, 1, 'Gasoline', 'CAR');
  INSERT_MODEL('Captiva', 4, 62, 2, 'Gasoline', 'CAR');
  INSERT_MODEL('Captiva', 4, 62, 3, 'Gasoline', 'CAR');
  INSERT_MODEL('Duster', 6, 24, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Duster', 6, 24, 2, 'Diesel', 'CAR');
  INSERT_MODEL('Doblo', 7, 85, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Doblo', 7, 85, 1, 'Gasoline + LPG', 'CAR');
  INSERT_MODEL('100 SSFC nappy', 26, 90, 1, 'Diesel', 'CAR');
  INSERT_MODEL('Pars', 27, 91, 2, 'Gasoline', 'MOTORCYCLE');
  INSERT_MODEL('MT-09', 28, 5, 2, 'Gasoline', 'MOTORCYCLE');
  INSERT_MODEL('YK250-21 R-Samurai', 29, 92, 2, 'Gasoline', 'MOTORCYCLE');
  INSERT_MODEL('Seyhan-150', 30, 92, 2, 'Gasoline', 'MOTORCYCLE');
  INSERT_MODEL('Ninja-250R', 31, 92, 2, 'Gasoline', 'MOTORCYCLE');
  INSERT_MODEL('Doruk', 32, 93, 4, 'Diesel', 'BUS');
  INSERT_MODEL('Belde', 33, 93, 4, 'Diesel', 'BUS');
  INSERT_MODEL('Fortuna', 34, 93, 5, 'Diesel', 'BUS');
  INSERT_MODEL('M-29', 35, 93, 2, 'Diesel', 'BUS');
  INSERT_MODEL('Pro', 33, 94, 6, 'Diesel', 'TRUCK');
  INSERT_MODEL('XF', 36, 95, 6, 'Diesel', 'TRUCK');
  INSERT_MODEL('TGA', 34, 94, 1, 'Diesel', 'TRUCK');
  INSERT_MODEL('AXOR', 12, 94, 5, 'Diesel', 'TRUCK');
  INSERT_MODEL('Cargo', 8, 95, 5, 'Diesel', 'TRUCK');
  COMMIT;
END;
/


BEGIN
  INSERT_EQUIPMENT_PACKAGE('Basic', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
  INSERT_EQUIPMENT_PACKAGE('Trendline', 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);
  INSERT_EQUIPMENT_PACKAGE('Ambition', 0, 1, 0, 0, 2, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0);
  INSERT_EQUIPMENT_PACKAGE('Style', 0, 1, 1, 1, 3, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0);
  INSERT_EQUIPMENT_PACKAGE('Comfort', 0, 1, 0, 1, 4, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0);
  INSERT_EQUIPMENT_PACKAGE('Urban', 0, 1, 1, 0, 4, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 0);
  INSERT_EQUIPMENT_PACKAGE('Highline', 0, 1, 1, 0, 5, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1);
  INSERT_EQUIPMENT_PACKAGE('Prestige', 1, 1, 1, 1, 6, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1);
  INSERT_EQUIPMENT_PACKAGE('Elegance', 1, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1);
  INSERT_EQUIPMENT_PACKAGE('Avantgarde', 1, 1, 1, 1, 7, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
  COMMIT;
END;
/


BEGIN
  INSERT_USER('ADMIN', 'Yılmaz', 'BAYSAL', 'yilmaz', 'yilmazbaysal@test.com', '0512 345 67 89', 'bc07f07a9bfb5f5cdc16d27da9b50420');
  INSERT_USER('ADMIN', 'Adil', 'ÇETİN', 'adil', 'adilcetin@test.com', '0512 345 67 89', '5c3bea5d394835b2af9d2cfd632147f8');
  INSERT_USER('BRANCH', 'M. Salih', 'KALKAN', 'salih', 'msalihkalkan@test.com', '0512 345 67 89', '8b08a5c0284840b4af937b7a932e5fab');
  INSERT_USER('BRANCH', 'Yunus Emre', 'ZENCİRLİ', 'yunus', 'yunuszencirli@test.com', '0512 345 67 89', 'a2c9a5d635f96695f809ce5272736ec5');
  INSERT_USER('MEMBER', 'Akif', 'YÖRÜK', 'akif', 'akifyoruk@test.com', '0512 345 67 89', '774c643b4e9fd67bb70d7f648d439247');
  INSERT_USER('MEMBER', 'Taha', 'YAMAÇ', 'taha', 'tahayamac@test.com', '0512 345 67 89', 'ac812175fbea1db0550899be0d571eec');
  INSERT_USER('MEMBER', 'Süleyman', 'ÖĞÜT', 'süleyman', 'suleymanogut@test.com', '0512 345 67 89', '42bf6c68f37913c51ce9d8c316f05e20');
  INSERT_USER('MEMBER', 'Mehmet', 'KÜÇÜKPEHLİVAN', 'mehmet', 'mehmetkucukpehlivan@test.com', '0512 345 67 89', '4e39298ce8bb79e5243616f7e09aae28');
  INSERT_USER('MEMBER', 'bot1', 'BOT', 'bot1', 'bot1@test.com', '0512 345 67 89', '639ca6172daf2f1acf5ed7a363fd232b');
  INSERT_USER('MEMBER', 'bot2', 'BOT', 'bot2', 'bot2@test.com', '0512 345 67 89', '9e57f94970f6c4caa792c90959f5668c');
  COMMIT;
END;
/


BEGIN
  INSERT_USER_LOG(1, 'Logged in to the website.');
  INSERT_USER_LOG(2, 'Displayed the details of a vehicle.');
  INSERT_USER_LOG(1, 'Rented a vehicle.');
  INSERT_USER_LOG(2, 'Logged in to the website.');
  INSERT_USER_LOG(2, 'Displayed the statistics page.');
  INSERT_USER_LOG(2, 'Displayed the details of a vehicle.');
  INSERT_USER_LOG(2, 'Rented a vehicle.');
  INSERT_USER_LOG(3, 'Logged in to the website.');
  INSERT_USER_LOG(3, 'Displayed the user logs page.');
  INSERT_USER_LOG(4, 'Logged in to the website.');
  COMMIT;
END;
/


BEGIN
  INSERT_BRANCH_RLTD_USER(1, 3);
  INSERT_BRANCH_RLTD_USER(2, 3);
  INSERT_BRANCH_RLTD_USER(3, 3);
  INSERT_BRANCH_RLTD_USER(4, 3);
  INSERT_BRANCH_RLTD_USER(5, 3);
  INSERT_BRANCH_RLTD_USER(6, 3);
  INSERT_BRANCH_RLTD_USER(7, 3);
  INSERT_BRANCH_RLTD_USER(8, 3);
  INSERT_BRANCH_RLTD_USER(9, 3);
  INSERT_BRANCH_RLTD_USER(10, 3);
  INSERT_BRANCH_RLTD_USER(11, 3);
  INSERT_BRANCH_RLTD_USER(12, 3);
  INSERT_BRANCH_RLTD_USER(13, 3);
  INSERT_BRANCH_RLTD_USER(14, 3);
  INSERT_BRANCH_RLTD_USER(15, 3);
  INSERT_BRANCH_RLTD_USER(16, 4);
  INSERT_BRANCH_RLTD_USER(17, 4);
  INSERT_BRANCH_RLTD_USER(18, 4);
  INSERT_BRANCH_RLTD_USER(19, 4);
  INSERT_BRANCH_RLTD_USER(20, 4);
  INSERT_BRANCH_RLTD_USER(21, 4);
  INSERT_BRANCH_RLTD_USER(22, 4);
  INSERT_BRANCH_RLTD_USER(23, 4);
  INSERT_BRANCH_RLTD_USER(24, 4);
  INSERT_BRANCH_RLTD_USER(25, 4);
  INSERT_BRANCH_RLTD_USER(26, 4);
  INSERT_BRANCH_RLTD_USER(27, 4);
  INSERT_BRANCH_RLTD_USER(28, 4);
  INSERT_BRANCH_RLTD_USER(29, 4);
  INSERT_BRANCH_RLTD_USER(30, 4);
  COMMIT;
END;
/


DECLARE
  out_vehicle_id NUMBER;
BEGIN
  INSERT_VEHICLE(3, 32764, '34 NK 7612', 2016, 'images/1.jpg', out_vehicle_id);
  INSERT_VEHICLE(4, 42000, '35 BER 7612', 2017, 'images/2.jpg', out_vehicle_id);
  INSERT_VEHICLE(11, 75000, '34 NZE 80', 2011, 'images/3.jpg', out_vehicle_id);
  INSERT_VEHICLE(18, 348000, '06 AT 0810', 1998, 'images/4.jpg', out_vehicle_id);
  INSERT_VEHICLE(19, 173000, 'SJB 322', 2005, 'images/5.jpg', out_vehicle_id);
  INSERT_VEHICLE(24, 80000, 'CND 4563', 2012, 'images/6.jpg', out_vehicle_id);
  INSERT_VEHICLE(28, 14000, '61 BK 328', 2017, 'images/7.jpg', out_vehicle_id);
  INSERT_VEHICLE(33, 193000, '01 AB 845', 2004, 'images/8.jpg', out_vehicle_id);
  INSERT_VEHICLE(35, 800, '34 RE 5790', 2017, 'images/9.jpg', out_vehicle_id);
  INSERT_VEHICLE(40, 186000, '35 FT 650', 2007, 'images/10.jpg', out_vehicle_id);
  INSERT_VEHICLE(181, 6100, '12 LM 675', 2016, 'images/11.jpg', out_vehicle_id);
  INSERT_VEHICLE(181, 19000, '51 KP 732', 2016, 'images/12.jpg', out_vehicle_id);
  INSERT_VEHICLE(182, 16100, '34 CT 942', 2016, 'images/13.jpg', out_vehicle_id);
  INSERT_VEHICLE(182, 29300, '06 R 3456', 2015, 'images/14.jpg', out_vehicle_id);
  INSERT_VEHICLE(183, 18300, '34 C 1942', 2014, 'images/15.jpg', out_vehicle_id);
  INSERT_VEHICLE(183, 4700, '51 V 4572', 2017, 'images/16.jpg', out_vehicle_id);
  INSERT_VEHICLE(184, 94500, '52 AR 172', 2002, 'images/17.jpg', out_vehicle_id);
  INSERT_VEHICLE(184, 84300, '38 EY 816', 2001, 'images/18.jpg', out_vehicle_id);
  INSERT_VEHICLE(185, 21600, '34 BEY 46', 2013, 'images/19.jpg', out_vehicle_id);
  INSERT_VEHICLE(185, 35800, '34 P 6482', 2009, 'images/20.jpg', out_vehicle_id);
  INSERT_VEHICLE(186, 206100, '61 CR 547', 2016, 'images/21.jpg', out_vehicle_id);
  INSERT_VEHICLE(186, 190400, '06 GH 732', 2016, 'images/22.jpg', out_vehicle_id);
  INSERT_VEHICLE(187, 1136100, '16 ZU 535', 2001, 'images/23.jpg', out_vehicle_id);
  INSERT_VEHICLE(187, 429300, '35 VZ 721', 2002, 'images/24.jpg', out_vehicle_id);
  INSERT_VEHICLE(187, 728300, 'C 2154 XX', 2003, 'images/25.jpg', out_vehicle_id);
  INSERT_VEHICLE(188, 732887, 'HI RO 103', 2006, 'images/26.jpg', out_vehicle_id);
  INSERT_VEHICLE(188, 1008000, '52 AR 172', 2004, 'images/27.jpg', out_vehicle_id);
  INSERT_VEHICLE(188, 458000, 'SZ C 172', 2006, 'images/28.jpg', out_vehicle_id);
  INSERT_VEHICLE(189, 1821600, '03 BB 108', 1997, 'images/29.jpg', out_vehicle_id);
  INSERT_VEHICLE(189, 835800, '68 FN 746', 2003, 'images/30.jpg', out_vehicle_id);
  INSERT_VEHICLE(190, 306100, '32 E 2246', 2010, 'images/31.jpg', out_vehicle_id);
  INSERT_VEHICLE(190, 190400, '06 YU 085', 2010, 'images/32.jpg', out_vehicle_id);
  INSERT_VEHICLE(191, 136100, 'KX63 KXH', 2006, 'images/33.jpg', out_vehicle_id);
  INSERT_VEHICLE(191, 109300, '73 KA 486', 2005, 'images/34.jpg', out_vehicle_id);
  INSERT_VEHICLE(192, 98300, '01 VF 326', 2009, 'images/35.jpg', out_vehicle_id);
  INSERT_VEHICLE(192, 82887, 'ST FE 248', 2009, 'images/36.jpg', out_vehicle_id);
  INSERT_VEHICLE(193, 104000, '34 CI 366', 2017, 'images/37.jpg', out_vehicle_id);
  INSERT_VEHICLE(193, 73500, '07 YET 51', 2015, 'images/38.jpg', out_vehicle_id);
  INSERT_VEHICLE(194, 321600, '63 YD 281', 2005, 'images/39.jpg', out_vehicle_id);
  INSERT_VEHICLE(194, 75800, '16 AFN 66', 2014, 'images/40.jpg', out_vehicle_id);
  COMMIT;
END;
/


BEGIN
  INSERT_BRANCH_RLTD_VEHICLE(1, 1, 1, 220);
  INSERT_BRANCH_RLTD_VEHICLE(2, 1, 1, 405);
  INSERT_BRANCH_RLTD_VEHICLE(3, 2, 1, 415);
  INSERT_BRANCH_RLTD_VEHICLE(4, 3, 1, 140);
  INSERT_BRANCH_RLTD_VEHICLE(5, 25, 1, 340);
  INSERT_BRANCH_RLTD_VEHICLE(6, 30, 1, 170);
  INSERT_BRANCH_RLTD_VEHICLE(7, 4, 1, 220);
  INSERT_BRANCH_RLTD_VEHICLE(8, 4, 1, 160);
  INSERT_BRANCH_RLTD_VEHICLE(9, 5, 1, 200);
  INSERT_BRANCH_RLTD_VEHICLE(10, 5, 1, 150);
  INSERT_BRANCH_RLTD_VEHICLE(11, 5, 1, 100);
  INSERT_BRANCH_RLTD_VEHICLE(12, 6, 1, 105);
  INSERT_BRANCH_RLTD_VEHICLE(13, 6, 1, 340);
  INSERT_BRANCH_RLTD_VEHICLE(14, 7, 1, 330);
  INSERT_BRANCH_RLTD_VEHICLE(15, 7, 1, 250);
  INSERT_BRANCH_RLTD_VEHICLE(16, 2, 1, 255);
  INSERT_BRANCH_RLTD_VEHICLE(17, 8, 1, 80);
  INSERT_BRANCH_RLTD_VEHICLE(18, 1, 1, 85);
  INSERT_BRANCH_RLTD_VEHICLE(19, 9, 1, 490);
  INSERT_BRANCH_RLTD_VEHICLE(20, 3, 1, 500);
  INSERT_BRANCH_RLTD_VEHICLE(21, 14, 1, 980);
  INSERT_BRANCH_RLTD_VEHICLE(22, 29, 1, 750);
  INSERT_BRANCH_RLTD_VEHICLE(23, 7, 1, 660);
  INSERT_BRANCH_RLTD_VEHICLE(24, 12, 1, 700);
  INSERT_BRANCH_RLTD_VEHICLE(25, 28, 1, 850);
  INSERT_BRANCH_RLTD_VEHICLE(26, 27, 1, 1200);
  INSERT_BRANCH_RLTD_VEHICLE(27, 14, 1, 999);
  INSERT_BRANCH_RLTD_VEHICLE(28, 26, 1, 1240);
  INSERT_BRANCH_RLTD_VEHICLE(29, 8, 1, 199);
  INSERT_BRANCH_RLTD_VEHICLE(30, 9, 1, 230);
  INSERT_BRANCH_RLTD_VEHICLE(31, 2, 1, 879);
  INSERT_BRANCH_RLTD_VEHICLE(32, 7, 1, 890);
  INSERT_BRANCH_RLTD_VEHICLE(33, 25, 1, 910);
  INSERT_BRANCH_RLTD_VEHICLE(34, 13, 1, 860);
  INSERT_BRANCH_RLTD_VEHICLE(35, 12, 1, 850);
  INSERT_BRANCH_RLTD_VEHICLE(36, 24, 1, 895);
  INSERT_BRANCH_RLTD_VEHICLE(37, 23, 1, 1480);
  INSERT_BRANCH_RLTD_VEHICLE(38, 11, 1, 950);
  INSERT_BRANCH_RLTD_VEHICLE(39, 4, 1, 730);
  INSERT_BRANCH_RLTD_VEHICLE(40, 5, 1, 1050);
  COMMIT;
END;
/


BEGIN
  INSERT_CAR(1, 2, 'D', 5);
  INSERT_CAR(2, 1, 'D', 9);
  INSERT_CAR(3, 1, 'E', 10);
  INSERT_CAR(4, 3, 'C', 2);
  INSERT_CAR(5, 2, 'C', 8);
  INSERT_CAR(6, 1, 'C', 4);
  INSERT_CAR(7, 1, 'C', 6);
  INSERT_CAR(8, 4, 'C', 3);
  INSERT_CAR(9, 9, 'SUV', 7);
  INSERT_CAR(10, 1, 'B', 1);
  COMMIT;
END;
/


BEGIN
  INSERT_MOTORCYCLE(11, 'Touring');
  INSERT_MOTORCYCLE(11, 'Touring');
  INSERT_MOTORCYCLE(13, 'Naked');
  INSERT_MOTORCYCLE(14, 'Naked');
  INSERT_MOTORCYCLE(15, 'Super Sport');
  INSERT_MOTORCYCLE(16, 'Super Sport');
  INSERT_MOTORCYCLE(17, 'Commuter');
  INSERT_MOTORCYCLE(18, 'Commuter');
  INSERT_MOTORCYCLE(19, 'Super Sport');
  INSERT_MOTORCYCLE(20, 'Super Sport');
  COMMIT;
END;
/


BEGIN
  INSERT_BUS(21, 32);
  INSERT_BUS(22, 40);
  INSERT_BUS(23, 32);
  INSERT_BUS(24, 34);
  INSERT_BUS(25, 34);
  INSERT_BUS(26, 56);
  INSERT_BUS(27, 46);
  INSERT_BUS(28, 46);
  INSERT_BUS(29, 22);
  INSERT_BUS(30, 18);
  COMMIT;
END;
/


BEGIN
  INSERT_TRUCK(31, 8000, 12000, 'OTHER');
  INSERT_TRUCK(32, 7000, 9000, 'OTHER');
  INSERT_TRUCK(33, 30000, 43000, 'Dry Van (Enclosed)');
  INSERT_TRUCK(34, 21000, 0, 'Lowboy');
  INSERT_TRUCK(35, 0, 0, 'Not Available');
  INSERT_TRUCK(36, 14000, 42000, 'Side Kit');
  INSERT_TRUCK(37, 0, 0, 'Not Available');
  INSERT_TRUCK(38, 0, 0, 'Not Available');
  INSERT_TRUCK(39, 17000, 22000, 'OTHER');
  INSERT_TRUCK(40, 26000, 38000, 'Refrigerated (Reefer)');
END;
/


BEGIN
  INSERT_HIRE(1, 3, 'EFT', TO_DATE('20/01/2018', 'DD/MM/YYYY'), TO_DATE('24/01/2018', 'DD/MM/YYYY'));
  INSERT_HIRE(1, 4, 'Credit Card', TO_DATE('24/01/2018', 'DD/MM/YYYY'), TO_DATE('25/01/2018', 'DD/MM/YYYY'));
  INSERT_HIRE(8, 5, 'Debit Card', TO_DATE('17/01/2018', 'DD/MM/YYYY'), TO_DATE('19/01/2018', 'DD/MM/YYYY'));
  INSERT_HIRE(10, 4, 'Credit Card', TO_DATE('24/03/2018', 'DD/MM/YYYY'), TO_DATE('24/04/2018', 'DD/MM/YYYY'));
  INSERT_HIRE(12, 6, 'PayPal', TO_DATE('05/02/2018', 'DD/MM/YYYY'), TO_DATE('10/02/2018', 'DD/MM/YYYY'));
  INSERT_HIRE(16, 7, 'EFT', TO_DATE('10/01/2018', 'DD/MM/YYYY'), TO_DATE('30/01/2018', 'DD/MM/YYYY'));
  INSERT_HIRE(20, 8, 'Credit Card', TO_DATE('03/01/2018', 'DD/MM/YYYY'), TO_DATE('14/02/2018', 'DD/MM/YYYY'));
  INSERT_HIRE(22, 9, 'Debit Card', TO_DATE('19/01/2018', 'DD/MM/YYYY'), TO_DATE('28/01/2018', 'DD/MM/YYYY'));
  INSERT_HIRE(28, 10, 'PayPal', TO_DATE('02/02/2018', 'DD/MM/YYYY'), TO_DATE('30/03/2018', 'DD/MM/YYYY'));
  INSERT_HIRE(32, 3, 'EFT', TO_DATE('01/01/2018', 'DD/MM/YYYY'), TO_DATE('02/01/2018', 'DD/MM/YYYY'));
  INSERT_HIRE(35, 4, 'PayPal', TO_DATE('30/01/2018', 'DD/MM/YYYY'), TO_DATE('27/02/2018', 'DD/MM/YYYY'));
  INSERT_HIRE(37, 4, 'Credit Card', TO_DATE('10/01/2018', 'DD/MM/YYYY'), TO_DATE('10/05/2018', 'DD/MM/YYYY'));
  COMMIT;
END;
/