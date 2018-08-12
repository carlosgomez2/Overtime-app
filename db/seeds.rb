@user = User.create(email: "carlos@gmail.com", password: "123456789", password_confirmation: "123456789", first_name: "Carlos", last_name: "Gomez")

puts "1 User created"

AdminUser.create(email: "admin@gmail.com", password: "adminpassword", password_confirmation: "adminpassword", first_name: "Jonh", last_name: "Snow")

puts "1 Admin User created"

100.times do |posts|
  Post.create!(date: Date.today, rationale: "#{posts} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "** 100 post has been created succesfully! **"