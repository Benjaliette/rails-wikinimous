require 'faker'

puts 'Delete actual Instances'

Article.destroy_all

puts 'Deleted!'

puts 'Creating 10 fakes articles...'
10.times do
  Article.create(
    title: Faker::Quote.most_interesting_man_in_the_world,
    content: Faker::Lorem.sentence
  )
end

puts 'Finished!'
