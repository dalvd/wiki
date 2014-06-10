namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Admin",
                 email: "admin@mail.com",
                 password: "123456",
                 password_confirmation: "123456",
				 admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "test-#{n+1}@mail.org"
      password  = "123456"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end