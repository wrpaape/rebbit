initial_userbase = 50
initial_userbase.times do
  User.create(name: Faker::Name.name, email: Faker::Internet.email, password_digest: Faker::Internet.password, avatar: Faker::Avatar.image)
end

categories["skiing", "chess", "whining", "tossing babies", "helping the elderly"]
categories.each { |cat| Subrebbit.create(category: cat)}

all_users = User.all
all_subrebbits = Subrebbit.all
initial_post_count = 10
initial_post_count.times do
  Post.create(title: Faker::Lorem.sentence,
              body: Faker::Lorem.paragraph,
              user_id: all_users[rand(0...initial_userbase)].id,
              subrebbit_id: all_subrebbits[rand(0...categories.size)].id)
end

all_posts = Post.all
initial_comments_count = 50
initial_comments_count.each do
  Comment.create(body: Faker::Lorem.paragraph,
                 user_id: all_users[rand(0...initial_userbase)].id,
                 post_id: all_posts[rand(0...all_posts.count)].id)
end


