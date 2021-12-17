# data-engineer-practice1

This repository was created for practice data engineering skills acquired during a course in Udemy platform.

Link to the course: [https://www.udemy.com/course/engenheiro-de-dados/](https://www.udemy.com/course/engenheiro-de-dados/)

This course has a project proposal to practice the skills acquired during classes.

## Below is the the project proposal description:

-------
#### You must implement the databases of a fictitious car rental company named RoboCar.

The rental company wants to:
A) control vehicle rental;
B) provide analytical data to managers;
C) have electronic contracts;
D) daily manage the number of risk contracts.

----------
##### A) Control vehicle rental:
- relational model (diagram);
- table creation scripts;
- data for software testing and development, with scripts.

What the entities must have:
- Vehicles registration:
  - Id;
  - Acquisition date;
  - Year;
  - Model;
  - Licence plate (brazilian);
  - Status (available, unavailabe, rented)
  - Daily rental price

- Clients registration:
  - Id;
  - CPF (brazilian social security number like);
  - CNH number (CNH is the brazilian driver licence);
  - CNH expiration date;
  - Name;
  - Registration date;
  - Brithday date;
  - Telephone;
  - Status (active, inactive).

- Dispatcher registration:
  - Id;
  - Name;
  - Status (active, inactive);
  - Subsidiary.

- Rental:
  - Vehicle;
  - Rental date;
  - Return date;
  - Total price;
  - Client;
  - Dispatcher.

-------
##### B) Provide analitical data to managers:
- Create and dimentional data warehouse that can answer the following questions:
  - Which and how many vehicles were rented with monthly grain;
  - Which dispatchers rented more vehicles with monthly grain;
  - What is the revenue by vehicle with monthly grain;
  - What is the revenue by dispatcher with monthly grain.

- You should deliver:
  - data extract and load scripts;
  - table creation scripts;
  - ready-made views that aswers the questions above;
  - data for software testing and development (transactional system load)

-----------
##### C) Have eletronic contracts:

- Rental contracts;
- The system must store the contract in eletronic format;
- It must be possible to query the contract by:
  - contract id/code;
  - client id;
  - contract date.
- The contract's body must have the 'type' information (normal, business, risk)

- You should deliver:
  - example data;
  - load scripts;
  - example query.

------------
##### D) Daily manage the number of risk contracts:

- Contract types: normal, business, risk
  - risk contracts are for people less than 24 years old;
  - daily, an application must count the total of risk contracts and store that count
  - you must build an application that counts this contracts querying the word 'risk'
