# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')



book_attributes = [
  { title: 'Catch-22', author: 'Joseph Heller', rating: 100 },
  { title: 'Cat in the Hat', author: 'Dr. Suess', rating: 100 },
  { title: 'The Very Hungry Caterpillar', author: 'Eric Carle', rating: 85 },
  { title: 'Worst Book Ever', author: 'Icant Wright', rating: 34 }
]

book_attributes.each do |attributes|
  Book.create(attributes)
end

category_attributes = [
  { name: 'Science Fiction'},
  { name: 'Childrens Book'},
  { name: 'Adventure'},
  { name: 'Mystery'}
]

category_attributes.each do |attributes|
  Category.create(attributes)
end


checkout_attributes = [
  { book_id: 5, checkout_date: "May 18th, 2017", reader_id: 5},
  { book_id: 6, checkout_date: "May 12th, 2017", reader_id: 6},
  { book_id: 7, checkout_date: "May 4th, 2017", reader_id: 7},
  { book_id: 8, checkout_date: "May 30th, 2017", reader_id: 5}
]

checkout_attributes.each do |attributes|
  Checkout.create(attributes)
end


Reader.find(1).update_attributes(first_name: "John", last_name: "Mendes")
Reader.find(2).update_attributes(first_name: "Meghan", last_name: "Sullivan")
Reader.find(3).update_attributes(first_name: "Leo", last_name: "The Rabbit")
Reader.find(4).update_attributes(first_name: "Icant", last_name: "Wright")
