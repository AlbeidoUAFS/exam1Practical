## CSCE 41333: Exam 1: Practice

### Instructions

Create a **simple Web API for the Orders table** in the Exam1Practice database using **NodeJS/Express/MySQL2**.  Your API should implement the following endpoints. All of the endpoints should return *JSON formatted data*, and the POST method should use *JSON formatted objects* too.  Your application does not require authentication.  Implement each endpoint and test using your browser or Bruno.


### REST API Endpoints

| HTTP Method | Endpoint | Description | Payload Body (JSON) |
| ----------- | -------- | ----------- | ------------------- |
| GET | /api/orders | **R**etrieve all orders | None |
| GET | /api/orders/:id | **R**etrieve single order | None |
| POST | /api/orders | **C**reate new order | JSON Data | 

#### Create MySQL Database
```
sudo mysql < exam1Practice.sql
```
