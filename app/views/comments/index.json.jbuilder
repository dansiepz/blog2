json.array!(@comments) do |comment|
  json.extract! comment, :name, :email, :content, :approved
  json.url comment_url(comment, format: :json)
end
