class IsbnScanToBook < BooksController

  def book_from_scan(isbn)

    isbn_link = "https://openlibrary.org/api/books?bibkeys=ISBN:"+isbn+"&jscmd=data&format=json"
    uri = URI.parse(isbn_link)
    response = Net::HTTP.get_response(uri)
    parsed_json = JSON.parse(response.body)
    info = parsed_json["ISBN:"+isbn]

    authors = join_field(info['authors'])
    publishers = join_field(info['publishers'])

    @book = current_user.books.build(
      title: info['title'],
      authors: authors,
      publisher: publishers,
      edition: info['publish_date'],
      pages: info['number_of_pages'],
      isbn: isbn,
      cover_link: info['cover']['medium'],
      user_id: current_user)
  end

private
  def join_field(field)
    field.map do |a|
      "#{a['name']}"
    end.join
  end


end #end class
