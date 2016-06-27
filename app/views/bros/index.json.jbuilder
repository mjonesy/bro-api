json.array! @bros.each do |bro|
  json.id bro.id
  json.name bro.name
  json.bio bro.bio
  json.food bro.food
  json.job bro.job
end