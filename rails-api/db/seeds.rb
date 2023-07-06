# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


programs = Program.create([
  {
    name: "Starting Strength",
    description: "Getting it going!"
  },
  {
    name: "MAPS Performance",
    description: "Perfect for beginners"
  },
  {
    name: "MAPS Powerlift",
    description: "Perfect for beginners"
  },
  {
    name: "MAPS Prime",
    description: "Description for Maps Prime"
  },
  {
    name: "MAPS Anabolic",
    description: "The goal here is to put on muscle and mass. Plain and simple."
  }
])


phases = Phase.create([
  {
    name: "Pump it up!",
    order: 0,
    program: programs.first
  },
  {
    name: "Max Numbers",
    order: 0,
    program: programs.first
  },
  {
    name: "Sustain",
    order: 0,
    program: programs.first
  },
  {
    name: "Work Up",
    order: 0,
    program: programs.second
  },
  {
    name: "Work Down",
    order: 1,
    program: programs.second
  },
])
