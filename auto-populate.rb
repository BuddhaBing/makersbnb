User.first_or_create(email:    "fake@fake.com",
                    name:      "will farrah",
                    user_name: "mommaLovva",
                    password_digest: "THISISAREALHASHHONEST")

User.first_or_create(email:    "kaisking@hotmail.com",
                    name:      "Kaiser souzer",
                    user_name: "iceDude",
                    password_digest: "THISISAREALHASHHONEST")

User.first_or_create(email:    "test@test.com",
                    name:      "Max Powers",
                    user_name: "blinkyMcgoo",
                    password_digest: "THISISAREALHASHHONEST")

Room.first_or_create(name:    "Tenpenny Towers",
            address: "221b Bakers Street",
            description: "deductive reasoning something help? john come do the internet",
            price: "5000",
            user: User.first)

Room.first_or_create(name:    "Trump Towers",
            address: "Trump Towers, believe me",
            description: "totally not a cardboard box",
            price: "500",
            user: User.first)

Room.first_or_create(name:    "The Enchanted Cave",
            address: "222b Bakers Street",
            description: "deductive reasoning something help? john come do the internet",
            price: "4999",
            user: User.first)

Booking.first_or_create(confirmed: true,
                        user: User.first(user_name: "iceDude"),
                        room: Room.first(name: "Tenpenny Towers"),
                        calendardate: Calendardate.first_or_create(date: Time.new))

Booking.first_or_create(
                        user: User.first(user_name: "mommaLovva"),
                        room: Room.first(name: "Trump Towers"),
                        calendardate: Calendardate.first_or_create(date: Time.new))

Booking.first_or_create(confirmed: false,
                        user: User.first(user_name: "blinkyMcgoo"),
                        room: Room.first(name: "The Enchanted Cave"),
                        calendardate: Calendardate.first_or_create(date: Time.new))
