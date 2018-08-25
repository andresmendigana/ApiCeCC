json.array! @activities do |act|
  json.id             act.id
  json.date_created   act.date_created
  json.title          act.title
  json.type           act.type
  json.date_event     act.date_event
  json.hour           act.hour
  json.short_description act.short_description
  json.description    act.description
  json.organizers     act.organizers
  json.user_id        act.user_id
end
