require_relative('models/customers')
require_relative('models/films')
require_relative('models/tickets')

require( 'pry ')

Customers.delete_all
Films.delete_all
Tickets.delete_all

film1 = Film.new({
  'title' => 'A New Hope',
  'price' => 4

  })

  film1.save;

  film2 = Film.new({
    'title' => 'Return of the Jedi',
    'price'=> 6
    })

    film2.save()

    film3 = Film.new({
      'title' => 'The Empire Strikes Back',
      'price' => 5
      })


customer1 = Customer.new({'name' => 'Bob', 'funds' => 50})
customer2 = Customer.new({'name' => 'Angela', 'funds' => 60})
customer3 = Customer.new({'name' => 'Juan', 'funds' => 70})
customer4 = Customer.new({'name' => 'Amelia', 'funds' => 10})


binding.pry
nil
