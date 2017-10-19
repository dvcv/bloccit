 require 'random_data'

 # Create Posts
 50.times do
   Post.create!(
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
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



 puts "#{Post.count} posts created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "Seed finished"
