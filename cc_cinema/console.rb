require_relative('models/customer')
require_relative('models/film')
require_relative('models/ticket')

require( 'pry' )

Customer.delete_all()
Film.delete_all()
Ticket.delete_all()

film1 = Film.new({
  'title' => 'A New Hope',
  'price' => 4
  })

film2 = Film.new({
    'title' => 'Return of the Jedi',
    'price'=> 6
    })

film3 = Film.new({
      'title' => 'The Empire Strikes Back',
      'price' => 5
      })

film1.save()
film2.save()
film3.save()


customer1 = Customer.new({'name' => 'Bob', 'funds' => 50})
customer2 = Customer.new({'name' => 'Angela', 'funds' => 60})
customer3 = Customer.new({'name' => 'Juan', 'funds' => 70})
customer4 = Customer.new({'name' => 'Amelia', 'funds' => 10})

customer1.save()
customer2.save()
customer3.save()
customer4.save()

ticket1 = Ticket.new({'customer_id' => customer1.id,
        'film_id' => film1.id})

ticket2 = Ticket.new({'customer_id' => customer2.id,
          'film_id' => film1.id})

ticket3 = Ticket.new({'customer_id' => customer3.id,
            'film_id' => film2.id})

ticket4 = Ticket.new({'customer_id' => customer1.id,
              'film_id' => film2.id})

ticket1.save()
ticket2.save()
ticket3.save()
ticket4.save()

film1.title


binding.pry
nil
