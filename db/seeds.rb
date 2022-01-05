# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

milan = Runner.create(name: "Milan Mody");
bob = Runner.create(name: "Bob Doe");
jane = Runner.create(name: "Jane Doe");



Run.create(time: 20, distance: 3.1, run_type: "Base Run", run_date: "2021-10-15", comments: "Good pace, good weather", runner: milan);
Run.create(time: 60, distance: 8, run_type: "Long Run",run_date: "2021-11-15", comments: "Long run early in the morning", runner: jane);
Run.create(time: 15, distance: 2, run_type: "Interval Run",run_date: "2021-12-15", comments: "Right knee was bothering me", runner: bob);