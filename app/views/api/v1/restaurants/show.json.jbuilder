json.extract! @restaurant, :id, :name, :address
json.partial! 'user', user: @restaurant.user
json.comments @restaurant.comments do |comment|
    json.extract! comment, :id, :content
end