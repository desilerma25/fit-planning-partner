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

desi = User.create(name: "Desi", email: "des@me.com", fitness_level: "expert", password: "password")
natty = User.create(name: "Natty", email: "natty@me.com", fitness_level: "expert", password: "password")
claire = User.create(name: "Claire", email: "claire@me.com", fitness_level: "beginner", password: "password")
tal = User.create(name: "Natalia", email: "natalia@me.com", fitness_level: "expert", password: "password")
alicia = User.create(name: "Alicia", email: "alicia@me.com", fitness_level: "mom", password: "password")

bicep = Exercise.create(name: "Bicep Curl", target_area: "Biceps", category: "Stregth")
roman = Exercise.create(name: "Romanian Deadlift", target_area: "Hamstrings, Glutes", category: "Stregth")
skull = Exercise.create(name: "Skull Crusher", target_area: "Triceps", category: "Stregth")
tuck = Exercise.create(name: "Tuck Jump", target_area: "Lower Body", category: "Cardio")
burpee = Exercise.create(name: "Burpee", target_area: "Full Body", category: "Cardio")


monday = Workout.create(name: "Monday Madness", user: desi)
WorkoutExercise.create(workout: monday, exercise: bicep, set: 10, reps:3)
WorkoutExercise.create(workout: monday, exercise: roman, set: 20, reps:2)
WorkoutExercise.create(workout: monday, exercise: skull, set: 15, reps:4)


back = Workout.create(name: "Back Attack", user: natty)
WorkoutExercise.create(workout: back, exercise: tuck, set: 10, reps:4)
WorkoutExercise.create(workout: back, exercise: burpee, set: 20, reps:2)

