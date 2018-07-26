@user = User.create(email: "carlos@gmail.com", password: "123456789", password_confirmation: "123456789", first_name: "carlos", last_name: "gomez")

puts "1 User created"

100.times do |posts|
  Post.create!(date: Date.today, rationale: "#{posts} rationale content", user_id: @user.id)
end

puts "** 100 post has been created succesfully! **"