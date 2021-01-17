# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

desi = User.create(name: "Desi", email: "des@me.com", password: "password")
natty = User.create(name: "Natty", email: "natty@me.com", password: "password")
claire = User.create(name: "Claire", email: "claire@me.com", password: "password")
tal = User.create(name: "Natalia", email: "natalia@me.com", password: "password")
alicia = User.create(name: "Alicia", email: "alicia@me.com", password: "password")

bicep = Exercise.create(name: "Bicep Curl", target_area: "Biceps", category: "Stregth")
roman = Exercise.create(name: "Romanian Deadlift", target_area: "Hamstrings, Glutes", category: "Stregth")
skull = Exercise.create(name: "Skull Crusher", target_area: "Triceps", category: "Stregth")
tuck = Exercise.create(name: "Tuck Jump", target_area: "Lower Body", category: "Cardio")
burpee = Exercise.create(name: "Burpee", target_area: "Full Body", category: "Cardio")


monday = Workout.create(name: "Monday Madness", user: desi)
Routine.create(workout: monday, exercise: bicep, sets: 10, reps:3)
Routine.create(workout: monday, exercise: roman, sets: 20, reps:2)
Routine.create(workout: monday, exercise: skull, sets: 15, reps:4)


back = Workout.create(name: "Back Attack", user: natty)
Routine.create(workout: back, exercise: tuck, sets: 10, reps:4)
Routine.create(workout: back, exercise: burpee, sets: 20, reps:2)

