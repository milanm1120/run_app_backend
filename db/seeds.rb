# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


milan = Runner.create(name: "Milan Mody", age: "35", gender: "Male", height: "70", weight: "175")
bob = Runner.create(name: "Bob Doe", age: "30", gender: "Male", height: "67", weight: "140")
jane = Runner.create(name: "Jane Doe", age: "28", gender: "Female", height: "62", weight: "118")



Run.create(time: 20, distance: 3.1, run_type: "Base", comments: "Good pace, good weather", runner: milan)
Run.create(time: 60, distance: 8, run_type: "Distance", comments: "Long run early in the morning", runner: jane)
Run.create(time: 15, distance: 2, run_type: "Interval", comments: "Right knee was bothering me", runner: bob)