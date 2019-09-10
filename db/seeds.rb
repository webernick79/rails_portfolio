# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do |count|
  Blog.create!(
    title: "My Blog Post #{count + 1}",
    body: "There’s nothing I really wanted to do in life that I wasn’t able to get good at. That’s my skill. I’m not really specifically talented at anything except for the ability to learn. That’s what I do. That’s what I’m here for. Don’t be afraid to be wrong because you can’t learn anything from a compliment."
  )
end
puts "------- 10 blog posts created ---------"

5.times do |count|
  Skill.create(
    title: "Skill Number #{count + 1}",
    percent_utilized: 1 + rand(100)
  )
end
puts "------- 5 skills created ---------"

9.times do |count|
  Portfolio.create(
    title: "Portfolio Item #{count + 1}",
    subtitle: "Sub-title for item #{count + 1}",
    body: "Society has put up so many boundaries, so many limitations on what’s right and wrong that it’s almost impossible to get a pure thought out.",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
  )
end

puts "------- 9 portfolio items created ---------"
