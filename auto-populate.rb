User.create(email:    "fake@fake.com",
            name:      "will farrah",
            user_name: "mommaLovva",
            password: "12345678",
            password_confirmation: "12345678")

User.create(email:    "kaisking@hotmail.com",
            name:      "Kaiser souzer",
            user_name: "iceDude",
            password: "12345678",
            password_confirmation: "12345678")

User.create(email:    "test@test.com",
            name:      "Max Powers",
            user_name: "blinkyMcgoo",
            password: "12345678",
            password_confirmation: "12345678")

User.create(email:    "wow@oh.com",
            name:      "Super Man",
            user_name: "flywithme",
            password: "12345678",
            password_confirmation: "12345678")

User.create(email:    "soon@late.com",
            name:      "Mr. Bean",
            user_name: "comeon",
            password: "12345678",
            password_confirmation: "12345678")

User.create(email:    "up@down.com",
            name:      "Jack Black",
            user_name: "jackme",
            password: "12345678",
            password_confirmation: "12345678")

room = Room.first_or_create(name:    "Tenpenny Towers",
            address: "221b Bakers Street",
            description: "deductive reasoning something help? john come do the internet",
            price: "5000",
            user: User.first)
            room.DateRanges << DateRange.first_or_create(start_date: Time.new(2021,4,12),end_date: Time.new(2021,4,25),room: room)

room = Room.first_or_create(name:    "Trump Towers",
            address: "Trump Towers, believe me",
            description: "totally not a cardboard box",
            price: "50",
            user: User.first)
            room.DateRanges << DateRange.first_or_create(start_date: Time.new(1234,5,6),end_date: Time.new(4444,4,1),room: room)

room = Room.first_or_create(name:    "The Enchanted Cave",
            address: "222b Bakers Street",
            description: "deductive reasoning something help? john come do the internet",
            price: "4999",
            user: User.first)
            room.DateRanges << DateRange.first_or_create(start_date: Time.new(1244,4,25),end_date: Time.new(5142,4,2),room: room)

room = Room.first_or_create(name:    "The Swollows Bridge",
            address: "Waldorf Street",
            description: "Great for bird watchers",
            price: "4500",
            user: User.first(user_name: "iceDude"))
            room.DateRanges << DateRange.first_or_create(start_date: Time.new(2016,1,12),end_date: Time.new(2020,4,2),room: room)

room = Room.first_or_create(name:    "Hammerschmidt Inn",
            address: "Starkenburggasse",
            description: "Get your kraut here!",
            price: "3500",
            user: User.first(user_name: "iceDude"))
            room.DateRanges << DateRange.first_or_create(start_date: Time.new(2016,2,8),end_date: Time.new(2020,4,25),room: room)

room = Room.first_or_create(name:    "Walbrook",
            address: "Edison Drive",
            description: "Great place to put your parents when they get to that age",
            price: "5500",
            user: User.first(user_name: "iceDude"))
            room.DateRanges << DateRange.first_or_create(start_date: Time.new(2016,2,25),end_date: Time.new(2016,4,2),room: room)

Booking.first_or_create(confirmed: true,
                         user: User.first(user_name: "iceDude"),
                         room: Room.first(name: "Tenpenny Towers"),
                         dateRange: DateRange.first_or_create(start_date: Time.new(2001,1,1),end_date: Time.new(2001,1,25)))

Booking.first_or_create(user: User.first(user_name: "mommaLovva"),
                        room: Room.first(name: "Trump Towers"),
                        dateRange: DateRange.first_or_create(start_date: Time.new(2015,1,25),end_date: Time.new(2016,1,2)))

Booking.first_or_create(confirmed: false,
                        user: User.first(user_name: "blinkyMcgoo"),
                        room: Room.first(name: "The Enchanted Cave"),
                        dateRange: DateRange.first_or_create(start_date: Time.new(2015,3,25),end_date: Time.new(2001,4,2)))
