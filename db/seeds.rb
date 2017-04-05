

15.times do |i|
  user = User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password(8))
  if i != 1
    post = Post.create(content: Faker::Lorem.sentence, user_id: user.id)
    like = Like.create(post_id: post.id, user_id: user.id)
    Friend.create(user_id: user.id, friend_user_id: user.id - 1)
  end

end
