json.array! @users do |user|
  json.id             user.id
  json.type           user.type
  json.name           user.name
  json.email          user.email
end
