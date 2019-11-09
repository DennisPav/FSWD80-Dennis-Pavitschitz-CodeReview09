

/*Select customers and there rented car*/

SELECT car.model, model.type, customer.surename
from rental
inner join customer on rental.id = customer.id
inner join car on rental.id = car.id
inner join model on car.model = model.model 

/* select employee with work location*/

SELECT location.address, location.postal_code, employee.name, employee.surename
from manager
inner join location on manager.location_id = location.id
inner join employee on manager.employee_id = employee.id

/*select car with less then 50000miles*/

SELECT * from car where car.mileage<50000

/*select rented cars with end location*/

SELECT car.model, model.type, customer.surename,rental.rent_start,rental.rent_end,location.address
from rental
inner join customer on rental.id = customer.id
inner join car on rental.id = car.id
inner join model on car.model = model.model
inner join location on rental.id = location.id

