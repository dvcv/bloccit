 require 'random_data'

 # Create Topics
 15.times do
   Topic.create!(
     name:         RandomData.random_sentence,
     description:  RandomData.random_paragraph
   )
 end
 topics = Topic.all

 # Create Posts
 50.times do
   Post.create!(
     topic:  topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end

 # Create Posts
 50.times do
   SponsoredPost.create!(
     topic:  topics.sample,
     title:  "Sponsored Post",
     body:   RandomData.random_paragraph,
     price: 99
   )
 end

 posts = Post.all

 100.times do
   Comment.create!(
 # #4
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

10.times do
    Advertisement.create!(
        title:  RandomData.random_sentence,
        body:   RandomData.random_paragraph
    )
end


 post = Post.find_or_create_by(title: 'Unique Title', body: 'Unique Body')
 Comment.find_or_create_by(post: post, body: 'Unique Body')



 puts "Seed finished"
 puts "#{Topic.count} topics created"
 puts "#{Post.count} posts created"
 puts "#{SponsoredPost.count} sponsored post created"
 puts "#{Comment.count} comments created"
