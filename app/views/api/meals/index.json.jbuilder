json.meals @meals do |meal|
  json.meal meal
  json.user meal.user
end