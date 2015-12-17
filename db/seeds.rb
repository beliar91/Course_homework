Advertisment.destroy_all
User.destroy_all
Product.destroy_all
Shop.destroy_all

10.times do

  u = User.create(username: Faker::Internet.user_name ,
                  email: Faker::Internet.email ,
                  password: Faker::Internet.password)

  10.times do
  Advertisment.create(user: u,
                       title: Faker::Company.name,
                       description: Faker::Lorem.word,
                       photo: Faker::Avatar.image)
   end
  random_boolean = [true, false].sample
  10.times do
  Product.create(ean: Faker::Code.ean,
                name: Faker::Company.name ,
                description: Faker::Lorem.sentence,
                active: random_boolean ,
                published: u.id)
  end

  Shop.create(address: Faker::Address.street_address,
              name: Faker::Company.name,
              number_of_employees: Faker::Number.number(1))

end