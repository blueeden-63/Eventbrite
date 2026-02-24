# Supprimer les données existantes
Event.destroy_all
User.destroy_all

# Créer des utilisateurs
user1 = User.create!(
  email: 'admin@example.com',
  password: 'password123',
  password_confirmation: 'password123',
  first_name: 'Jean',
  last_name: 'Dupont',
  description: 'Organisateur d\'événements passionné par la technologie'
)

user2 = User.create!(
  email: 'user@example.com',
  password: 'password123',
  password_confirmation: 'password123',
  first_name: 'Marie',
  last_name: 'Martin',
  description: 'Développeuse et entrepreneuse enthousiaste'
)

# Créer des événements
Event.create!(
  title: "Conférence Tech 2026",
  description: "Venez découvrir les meilleures conférences technologiques de l'année avec des experts reconnus mondialement.",
  start_date: Time.now + 1.day,
  duration: 120,
  price: 29,
  location: "Paris",
  admin: user1
)

Event.create!(
  title: "Workshop Python",
  description: "Une journée complète dédiée au networking et aux présentations des innovations les plus récentes du secteur.",
  start_date: Time.now + 2.days,
  duration: 180,
  price: 49,
  location: "Lyon",
  admin: user2
)

Event.create!(
  title: "Meetup Rails",
  description: "Participez à cet événement unique pour rencontrer les leaders de l'industrie et développer vos compétences.",
  start_date: Time.now + 3.days,
  duration: 120,
  price: 19,
  location: "Marseille",
  admin: user1
)

Event.create!(
  title: "Summit Web3",
  description: "Assistez à des ateliers pratiques et des discussions passionnantes sur l'avenir de la technologie.",
  start_date: Time.now + 5.days,
  duration: 240,
  price: 79,
  location: "Toulouse",
  admin: user2
)

Event.create!(
  title: "Hackathon Innovation",
  description: "Une opportunité rare de vous connecter avec des professionnels du domaine et d'explorer de nouvelles perspectives.",
  start_date: Time.now + 7.days,
  duration: 480,
  price: 1,
  location: "Nice",
  admin: user1
)

puts "Seeds créés avec succès!"