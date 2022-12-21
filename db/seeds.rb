u1 = User.create(name:"Colleen", username: "colleen", email: "colleen@email.com", password_digest: "123", avatar: "https://upload.wikimedia.org/wikipedia/commons/0/0c/Billy_Taylor_in_2000.jpg")
u2 = User.create(name:"Marie", username: "marie", email: "marie@email.com", password_digest: "123", avatar: "https://media.wonderlandmagazine.com/uploads/2020/05/P86A9034-Edit.jpg")
u3 = User.create(name:"Cabedo", username: "cabedo", email: "cabedo@email.com", password_digest: "123", avatar: "https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg)/origin-imgresizer.eurosport.com/2012/09/19/890667-20053213-2560-1440.jpg")

l1 = Listing.create(title:"8 Spruce", address:"Financial District", city:"Manhattan", bedroom:3, bathroom:2, description:"Testing", amenities:"Testing", price: 14000.00, duration:"6 months", image:"https://www.glenwoodnyc.com/wp-content/uploads/2022/05/2-JSP-LOBBY-01-02-1280.jpg")
l2 = Listing.create(title:"312 West", address:"Hell's Kitchen", city:"Manhattan", bedroom:1, bathroom:1, description:"Testing", amenities:"Testing", price:12000.00, duration:"3 months", image:"https://www.relatedrentals.com/sites/default/files/2022-10/Westminster_16H_3.jpg")
l3 = Listing.create(title:"202 Berry", address:"Williamsburg", city:"Brooklyn", bedroom:4, bathroom:2, description:"Testing", amenities:"Testing", price:10500.00, duration:"7 months", image:"https://www.nynesting.com/sites/default/files/teaser_images/silver_towers_roof_luxury_rentals.jpg")

f1 = Favorite.create(favorite: true, user_id:u2.id, listing_id:l2.id)
f2 = Favorite.create(favorite: false, user_id:u2.id, listing_id:l1.id)
f3 = Favorite.create(favorite: true, user_id:u3.id, listing_id:l3.id)
f4 = Favorite.create(favorite: true, user_id:u1.id, listing_id:l1.id)

b1 = Booking.create(review: "cool", rating: 4, user_id:u1.id, listing_id:l1.id)
b2 = Booking.create(review: "alright", rating: 5, user_id:u2.id, listing_id:l2.id)
b3 = Booking.create(review: "awesome", rating: 4, user_id:u3.id, listing_id:l3.id)