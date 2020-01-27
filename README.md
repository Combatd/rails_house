# Rails House

By the end of this project, each Person will live in a house and each House will have an address. 

## Phase 1 - New Project
1. Run bundle exec ```rails db:create```
2. If there are migrations, run ```bundle exec rails db:migrate```
3. If there are seeds, run ```bundle exec rails db:seed```

## Phase 2: Create Models and Migrations

* Create a Person model and a people table (each Person should have a name and a house_id)
    * Create and run a Migration for each model. (Refer to the Migration Reading if you need a reminder!)
    * Create a file called model_name.rb in /app/models/ for each model.
    * Validate the presence of each of the attributes that model can have. 
* Create a House model and a houses table (each House should have an address).

## Phase 3: Create associations
* Create Associations for Houses with People such that Houses can have many #residents and each Person belongs to a #house. (Refer to the readings for belongs_to and has_many.)
    * This relies on you specifying the correct primary_key, foreign_key, and class_name; otherwise, when you call House.residents, Rails will assume you are following conventions and look for a residents table rather than a people table!

## Phase 4: Try it out!
* Use the rails console to create some data and run some basic queries.

* You should be able to run the following.
```
house = House.new(address: '308 Negra Arroyo Lane')
person = Person.new(name: 'Walter White', house_id: house.id)

house.save!
person.save!
```