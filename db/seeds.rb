puts "🌱 Seeding data..."

puts "Creating roles..."
r1 = Role.create(character_name: "Bob")
r2 = Role.create(character_name: "DJ")
r3 = Role.create(character_name: "Rachel")
r4 = Role.create(character_name: "Sally")

puts "Creating auditions..."
Audition.create(actor: "James", location:"LA", phone: rand(1..10), hired?: true, role_id: r1.id)
Audition.create(actor: "Winston", location:"Iowa", phone: rand(1..10), hired?: false, role_id: r2.id)
Audition.create(actor: "Boop", location:"Merica", phone: rand(1..10), hired?: true, role_id: r3.id)
Audition.create(actor: "Fizz", location:"Paris", phone: rand(1..10), hired?: true, role_id: r4.id)

puts "🌱 Done seeding!"