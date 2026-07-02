Project.destroy_all

Project.create!([
  {
    title: "L'Étamine",
    tagline: "Fleuriste & wedding designer",
    description: "Site e-commerce et vitrine pour une artisane fleuriste spécialisée dans les compositions florales sur-mesure et la décoration de mariage. Boutique en ligne, gestion des commandes, espace admin.",
    category: "artisan",
    url: "https://www.letamine.fr",
    technologies: "Ruby on Rails, PostgreSQL, Devise, Stimulus",
    year: 2025,
    featured: true,
    position: 1,
    image: "letamine.jpg"
  },
  {
    title: "EcolaZik",
    tagline: "École de musique",
    description: "Site vitrine pour une école de musique proposant cours individuels, ateliers collectifs et stages d'été. Présentation des intervenants, tarifs et formulaire de contact.",
    category: "musique",
    url: "https://www.ecolazik.com",
    technologies: "Ruby on Rails, PostgreSQL, Stimulus",
    year: 2025,
    featured: true,
    position: 2,
    image: "ecolazik.jpg"
  }
])

puts "✓ #{Project.count} projets créés"