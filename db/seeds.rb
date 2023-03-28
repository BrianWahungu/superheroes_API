Superhero.create(name: "Superman", superpower: "Flight")
Superhero.create(name: "Spider-Man", superpower: "Web-slinging")
Superhero.create(name: "Iron Man", superpower: "Advanced technology")
Superhero.create(name: "Wonder Woman", superpower: "Super strength")


# Create some powers
powers = Power.create([
    { description: 'Super strength' },
    { description: 'Invisibility' },
    { description: 'Telekinesis' }
  ])
  
  # Create some hero powers
HeroPower.create([
    { hero_id: 1, power_id: powers[0].id, strength: 'Strong' },
    { hero_id: 1, power_id: powers[1].id, strength: 'Weak' },
    { hero_id: 2, power_id: powers[2].id, strength: 'Average' }
  ])
  