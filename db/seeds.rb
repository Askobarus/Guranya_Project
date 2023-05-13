unless User.any?

  user = User.create(name: 'Bob',
              email: 'bob@example.com')
  wishlist = user.wishlists.create(name: 'My Wishlist')
  wishlist.wishes.create([{name: 'Bike', description: 'Any modern bike'},
                         {name: 'Nintendo Switch'}])
  user.save
end
