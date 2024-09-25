10.times do
  Service.create!(
    {
      name: Faker::Lorem.word,
      description: Faker::Lorem.sentence,
      address_1: Faker::Address.street_address,
      city: Faker::Address.city,
      province: Faker::Address.state,
      country: "Zimbabwe"
    }
  )
end

