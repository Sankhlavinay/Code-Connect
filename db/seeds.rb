ActiveRecord::Base.transaction do 
  100.times do |i| 
    user = User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      username: "#{ Faker::Name.first_name.downcase}_#{i+10}",
      email: Faker::Internet.email,
      contact_number: Faker::PhoneNumber.phone_number_with_country_code,
      street_address: Faker::Address.street_address,
      city: Faker::Address.city,
      state: Faker::Address.state,
      country: Faker::Address.country,
      pincode: Faker::Address.postcode,
      date_of_birth: (Date.today + rand(1..30).days) - rand(24..36).years,
      profile_title: User::PROFILE_TITLE.sample,
      password: "password",
      about: Faker::Lorem.paragraph_by_chars(number: 750)
    )

    puts "User #{i+1} created Successfully."
  end
end