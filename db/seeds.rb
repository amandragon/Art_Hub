Review.delete_all
User.delete_all
Post.delete_all

u1 = User.create(:id=>100, :name=>'Diane Shen', :email=>'ds@gmail.com', :password=> "foobar", :password_confirmation=> "foobar")
u2 = User.create(:id=>200, :name => 'Markus',  :email=> "mguehrs@gmail.com", :password=> "foobar", :password_confirmation=> "foobar")

p1 = Post.create(:id=>500, :user_id=>100, :title=>"This is a post", :text=>"This is a wonderful post that I wrote. Wow. Such post.")
p2 = Post.create(:id=>501, :user_id=>100, :title=>"This is my second post", :text=>"What a wonderful second post this is.")
p3 = Post.create(:id=>502, :user_id=>200, :title=>"This is the second user's post", :text=>"Lalala post!")

r1 = Review.create(:post_id=>500, :user_id=>200, :title=> "What a great post", :text=>"Wonderful post", :score=>80)
r2 = Review.create(:post_id=>501, :user_id=>200, :title=>"This is a very good post as well", text:"Love the post", :score=>88)
r3 = Review.create(:post_id=>500, :user_id=>200, :title=>"Post review", :text=>"dkfjfgjhgjfhfj", :score=>40)
r4 = Review.create(:post_id=>502, :user_id=>100, :title=> "dskfjkdgjd", :text=>"sfdghjsdfghjasdfghj", :score=>90)

