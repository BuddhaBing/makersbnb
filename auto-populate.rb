
array = []
array << User.create(email:    "fake@fake.com",
                    name:      "will farrah",
                    user_name: "mommaLovva",
                    password_digest: "THISISAREALHASHHONEST")

array << User.create(email:    "kaisking@hotmail.com",
                    name:      "Kaiser souzer",
                    user_name: "iceDude",
                    password_digest: "THISISAREALHASHHONEST")

array << Room.create(name:    "Tenpenny Towers",
            address: "221b Bakers Street",
            description: "deductive reasoning something help? john come do the internet",
            price: "5000",
            user: User.first)

array << Room.create(name:    "Trump Towers",
            address: "Trump Towers, believe me",
            description: "totally not a cardboard box",
            price: "500",
            user: User.first)

valid =   array.select(&:valid?)
invalid = array.reject(&:valid?)

if valid.length > 0
  puts "valid"
  puts "-----"
  valid.each{|valid| puts valid.name}
end

if invalid.length > 0
  puts "invalid"
  puts "-----"
  invalid.each{|valid| puts valid.name}
end
