namespace :db do
  desc "Fill database with demo data"
  task populate: :environment do
    admin = User.create!(name: "Admin",
                 email: "admin@mail.com",
                 password: "123456",
                 password_confirmation: "123456",
				 admin: true)    
	31.times do |n|
      name  = Faker::Name.name
      email = "test-#{n+1}@mail.com"
      password  = "123456"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)	
	end
	users = User.all
    35.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.articles.create!(content: content) }
     end
  end
end