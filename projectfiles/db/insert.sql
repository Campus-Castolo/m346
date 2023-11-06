INSERT INTO DHLLC_Portfolio.User (idUser, nicknameUser, nameUser, surnameUser, creationUser)
VALUES (1, 'john_doe', 'John', 'Doe', '2023-10-31 12:00:00');

INSERT INTO DHLLC_Portfolio.TechStack (idTechStackStock, amountTechStack, User_idUser)
VALUES (1, 5, 1);

INSERT INTO DHLLC_Portfolio.AgriBusiness (idAgriBusiness, amountAgriBusiness, User_idUser)
VALUES (1, 10, 1);

INSERT INTO DHLLC_Portfolio.FinancialAdvisory (idFinancialAdvisory, hasFinancialAdvisory, ContactFinancialAdvisory, User_idUser)
VALUES (1, 1, 'John\'s Advisor', 1);