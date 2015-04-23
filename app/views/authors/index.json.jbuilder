json.array!(@authors) do |author|
  json.extract! author, :id, :name, :gender, :dob
  json.url author_url(author, format: :json)
end
