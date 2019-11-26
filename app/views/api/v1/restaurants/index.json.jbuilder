json.array! @restaurants do |restaurant|
  json.extract! restaurant, :id, :name, :address
  json.partial! 'user', user: restaurant.user
  json.comments do
    json.array! restaurant.comments do |comment|
      json.extract! comment, :id, :content
      json.partial! 'user', user: comment.user
    end
  end
end