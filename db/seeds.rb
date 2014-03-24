Review.delete_all
User.delete_all
Post.delete_all

u1 = User.create(:id=>1, :name=>'Diane Shen', :email=>'ds@gmail.com', :password=> "foobar", :password_confirmation=> "foobar")
u2 = User.create(:id=>2, :name => 'Markus',  :email=> "mguehrs@gmail.com", :password=> "foobar", :password_confirmation=> "foobar")

p1 = Post.create(:id=>1, :user_id=>1, :title=>"This is a post", :text=>"This is a wonderful post that I wrote. Wow. Such post.")
p2 = Post.create(:id=>2, :user_id=>1, :title=>"This is my second post", :text=>"What a wonderful second post this is.")
p3 = Post.create(:id=>3, :user_id=>2, :title=>"This is the second user's post", :text=>"Lalala post!")

r1 = Review.create(:post_id=>1, :user_id=>2, :title=> "What a great post", :text=>"Wonderful post", :score=>80)
r2 = Review.create(:post_id=>2, :user_id=>2, :title=>"This is a very good post as well", text:"Love the post", :score=>88)
r3 = Review.create(:post_id=>1, :user_id=>2, :title=>"Post review", :text=>"dkfjfgjhgjfhfj", :score=>40)
r4 = Review.create(:post_id=>3, :user_id=>1, :title=> "dskfjkdgjd", :text=>"sfdghjsdfghjasdfghj", :score=>90)

