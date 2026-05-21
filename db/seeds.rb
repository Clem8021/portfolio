puts "Nettoyage de la base..."
Project.destroy_all

puts "Création des projets..."

Project.create!([
  {
    title: "Conservatoire de Beauvais",
    description: "Site vitrine et gestion des inscriptions pour une école de 300 élèves. Agenda des concerts, espace professeurs, gestion saisonnière.",
    category: "music",
    featured: true,
    position: 1
  },
  {
    title: "Luthier Dupont",
    description: "Vitrine pour un luthier indépendant : présentation du savoir-faire, portfolio d'instruments, formulaire de commande sur-mesure.",
    category: "artisan",
    featured: true,
    position: 2
  },
  {
    title: "Galerie Lumière",
    description: "Site galerie avec catalogue d'œuvres filtrable, prise de rendez-vous et newsletter. Une expérience épurée pour mettre l'art en valeur.",
    category: "art",
    featured: true,
    position: 3
  }
])

puts "#{Project.count} projets créés ✓"
