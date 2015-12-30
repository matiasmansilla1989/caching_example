publishers = []
100.times do |i| 
  publishers << Publisher.new(name: Faker::Name.name)
end

# Create all Publishers in one INSERT 
imported_publishers = Publisher.import publishers

books = []
imported_publishers.ids.each do |publisher_id|
  100.times do |i|
    books << Book.new(name: Faker::Name.name, description: Faker::Lorem.sentence, publisher_id: publisher_id)
  end
end

# Create all Books in one INSERT 
imported_books = Book.import books

reviews = []
imported_books.ids.each do |book_id|
  3.times do |j|
    reviews << Review.new(content: Faker::Lorem.sentence, author: Faker::Name.name, book_id: book_id)
  end
end

# Create all Reviews in one INSERT 
Review.import reviews
