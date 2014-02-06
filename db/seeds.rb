Review.delete_all
User.delete_all

u1 = User.create(:name=>'Diane Shen', :email=>'ds@gmail.com', password: "foobar", password_confirmation: "foobar")

u2 = User.create(:name => 'Markus',  email: "mguehrs@gmail.com", password: "foobar", password_confirmation: "foobar")

# u2 = User.create(:name=>'Zoe Edmonds', :email=>'tze@yahoo.com')
# u3 = User.create(:name=>'Walker Guffey', :email=>'walker@gmail.com')
# u4 = User.create(:name=>'Max Egan', :email=>'max@sdfg.com')
# u5 = User.create(:name=>'Aditi Vasan', :email=>'aditi@werty.com')

r1 = Review.create(:review_text=>'Blah blah blah blah blah. I liked it.', :score=>4)
r1.author = u1
r1.reviewee = u2
r1.save

# u1.reviews << r1
# u1.save

# r2 = Review.create(:review_text=>'This was horrible!', :score=>1)
# r3 = Review.create(:review_text=>'fhsgjdhkf', :score=>5)
# r4 = Review.create(:review_text=>'review, review, review', :score=>3)

# u1.reviews = [r1, r2]
# u3.reviews = [r3]
# u4.reviews = [r4]




# b1.recipes = [r1, r2]
# b1.recipes << r3

# r1.ingredients = [i1, i2, i4]
# r2.ingredients = [i1, i2, i4, i5, i6]
# r3.ingredients = [i2, i3, i4]

#User.create(:name => 'Markus',  email: "mguehrs@gmail.com", password: "foobar123", password_confirmation: "foobar123")
