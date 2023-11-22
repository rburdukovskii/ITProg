# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

unless User.any?
  user = User.create(name: 'Bob', email: 'bob@example.com', password: '12345')
  post = user.posts.create(title: 'Test_title', body: 'test_body')
  post.comments.create(body: "Works!", user_id: user.id)
  user.save
end