@user = User.create(email: "carlos@gmail.com", password: "123456789", password_confirmation: "123456789", first_name: "Carlos", last_name: "Gomez")

puts "1 User created"

AdminUser.create(email: "admin@gmail.com", password: "adminpassword", password_confirmation: "adminpassword", first_name: "Jonh", last_name: "Snow")

puts "1 Admin User created"

6.times do |audit_log|
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - SecureRandom.random_number(1..60).days))
end

puts "** 30 audit logs has been created succesfully! **"

30.times do |posts|
  Post.create!(date: Date.today, rationale: "Pour-over XOXO swag post-ironic cray snackwave PBR&B hammock iPhone fashion axe fanny pack jean shorts knausgaard. Before they sold out snackwave vape, food truck cold-pressed salvia authentic meh. Hot chicken next level before they sold out kogi helvetica cardigan single-origin coffee shaman af godard chicharrones adaptogen tumeric vaporware. YOLO butcher shoreditch pabst vexillologist. Man braid shaman organic lomo.", user_id: @user.id, overtime_request: 2.5)
end

puts "** 30 posts has been created succesfully! **"