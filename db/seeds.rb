# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

old_user = User.create(first_name: 'old', email: 'old2@gmail.com', password: 'oldold', password_confirmation: 'oldold')

author = Author.create!(first_name: 'Bill', last_name: 'Gates')

book = Book.create!(title: 'some title', year:'2016-01-01', isbn: 1234, author_id: author.id)
