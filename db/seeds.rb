require 'faker'

5.times do
        City.create(city_name: Faker::Address.city)
end

8.times do
        DogSitter.create(first_name: Faker::Name.first_name, 
        city_id: City.all.sample.id)
end


15.times do
	Dog.create(name: Faker::Games::Pokemon.name, 
        city_id: City.all.sample.id)
end


20.times do
	Stroll.create(dog_sitter_id: DogSitter.all.sample.id,
         dog_id: Dog.all.sample.id, 
         city_id: City.all.sample.id, 
         date: Faker::Date.in_date_period)
end