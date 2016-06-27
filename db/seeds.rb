20.times do

  Bro.create(
    name: Faker::Stoked.celebroty,
    bio: Faker::Stoked.bio,
    food: Faker::Stoked.food,
    job: Faker::Stoked.job
    )
end