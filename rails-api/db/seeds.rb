# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


programs = Program.create([
  {
    name: "MAPS Performance",
    description: "Designed to improve athletic performance, functional mobility, and a cultivate a balanced looking body"
  },
  {
    name: "MAPS Powerlift",
    description: "Designed to maximize your lifts in the three lifts; The Squat, The Bench Press, and the Deadlift."
  },
  {
    name: "MAPS Prime",
    description: "Designed to provide supurior muscle recutment pattern, proper join mobility, prime the cental nevous system to maximize any muscle building signals"
  },
  {
    name: "MAPS Anabolic",
    description: "Designed to maximize muscle building and metabolism boosting potential."
  },
  {
    name: "MAPS Asthetic",
    description: "Designed to maximize muscle building and body sculpting potential"
  }
])


phases = Phase.create([
  {
    name: "Phase 1",
    order: 0,
    objective: "To build maximal strength.",
    what_to_expect: "Rapid strength gains. This Phase will make you feel strong.",
    length: 3,
    program: programs[0]
  },
  {
    name: "Phase 2",
    order: 1,
    objective: "To build multi-planar strength.",
    what_to_expect: "Increase your proprioception strength. The ability to perform strongly in any direction when demanded.",
    length: 3,
    program: programs[0]
  },
  {
    name: "Phase 3",
    order: 2,
    objective: "To build quick and powerful strength.",
    what_to_expect: "Rapid increase in acceleration. This phase will make you feel fast and powerful.",
    length: 3,
    program: programs[0]
  },
  {
    name: "Phase 4",
    order: 3,
    objective: "To give your strength a bigger gas tank.",
    what_to_expect: "A dramatic increase in strength endurance and conditioning.",
    length: 3,
    program: programs[0]
  },
])



