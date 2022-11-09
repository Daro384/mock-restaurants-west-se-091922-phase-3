# This will delete any existing rows from the Restaurant and Customer tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting Restaurant/Customer data..."
Restaurant.destroy_all
Customer.destroy_all
Review.destroy_all

puts "Creating restaurants..."
shack = Restaurant.create(name: "Karen's Lobster Shack", price: 1)
bistro = Restaurant.create(name: "Sanjay's Lobster Bistro", price: 2)
palace = Restaurant.create(name: "Kiki's Lobster Palace", price: 3)

puts "Creating customers..."
baby_spice = Customer.create(first_name: "Emma", last_name: "Bunton")
ginger_spice = Customer.create(first_name: "Geri", last_name: "Halliwell")
scary_spice = Customer.create(first_name: "Melanie", last_name: "Brown")
sporty_spice = Customer.create(first_name: "Melanie", last_name: "Chisholm")
posh_spice = Customer.create(first_name: "Victoria", last_name: "Addams")

puts "Creating reviews..."
great_shack = Review.create(comment: "Tasted Amazing", rating: 8, restaurant_id:1, customer_id:3)
terrible = Review.create(comment: "Disgusting", rating: 3, restaurant_id:1, customer_id:1)
best = Review.create(comment: "Best i've had", rating: 10, restaurant_id:2, customer_id:4)
not_bad = Review.create(comment: "It was okay", rating: 6, restaurant_id:3, customer_id:5)
service = Review.create(comment: "Great service", rating: 7, restaurant_id:3, customer_id:2)
terrible2 = Review.create(comment: "Worst service Ever!", rating: 2, restaurant_id:1, customer_id:1)

puts "Seeding done!"