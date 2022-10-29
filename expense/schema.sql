DROP TABLE IF EXISTS expenses;

CREATE TABLE expenses(
    id serial PRIMARY KEY, 
    created_on date NOT NULL DEFAULT CURRENT_DATE,
    amount decimal(6,2) NOT NULL CHECK(amount > 0), 
    memo text NOT NULL
    );