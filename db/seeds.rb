100.times do |posts|
  Post.create!(date: Date.today, rationale: "#{posts} rationale content")
end

puts "** 100 post has been created succesfully! **"