10000.times do
	Item.create( 
		name: Faker::Name.name, 
		description: Faker::Lorem.sentence,
		price: Faker::Commerce.price
	)
end