publishers = []
100.times do |i| 
  publishers << Publisher.new(name: Faker::Name.name)
end

imported_publishers = Publisher.import publishers

imported_publishers.ids.each do |publisher_id|
  books = []
  10000000.times do |i|
    books << Book.new(name: Faker::Name.name, description: Faker::Lorem.sentence, publisher_id: publisher_id)
  end

  imported_books = Book.import books
  imported_books.ids.each do |book_id|
    reviews = []
    3.times do |j|
      reviews << Review.new(content: Faker::Lorem.sentence, author: Faker::Name.name, book_id: book_id)
    end

    Review.import reviews
  end
end