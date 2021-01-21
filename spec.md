# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (User has_many workouts) 
- [x] Include at least one belongs_to relationship (Workout belongs_to User)
- [x] Include at least two has_many through relationships (Workout has_many Exercises through Routines, Exercise has_many Workouts through Routines)
- [x] Include at least one many-to-many relationship (Workout has_many Exercises through Routines, Exercise has_many Workouts through Routines)
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (reps e.g. workout.routine.reps)
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Exercise, Workout)
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. Exercise.find_by_target_area and Exercise.order_by_name)
- [x] Include signup (through app)
- [x] Include login (through app)
- [x] Include logout (through app)
- [x] Include third party signup/login (Google OmniAuth2)
- [x] Include nested resource show or index (URL e.g. users/2/workouts)
- [x] Include nested resource "new" form (URL e.g. users/1/workouts/new)
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate