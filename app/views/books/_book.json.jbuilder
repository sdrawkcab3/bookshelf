json.extract! book, :id, :title, :authors, :publisher, :edition, :pages, :created_at, :updated_at
json.url book_url(book, format: :json)
