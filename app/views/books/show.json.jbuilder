#json.partial! "books/book", book: @book
json.(@book, :title, :isbn, :year, :image, :description)
json.author do
  json.name @book.author.first_name
  json.last_name @book.author.last_name  
end
json.comments @book.comments, :text