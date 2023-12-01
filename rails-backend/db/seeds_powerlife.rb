
programs = Program.create([
  {
    name: "MAPS Powerlift",
    description: "Designed to maximize your lifts in the three lifts; The Squat, The Bench Press, and the Deadlift."
  }])


phases = Phase.create([
  {
    name: "Phase 1",
    order: 0,
    objective: "To build maximal strength.",
    what_to_expect: "Rapid strength gains. This Phase will make you feel strong.",
    duration_days: 3,
    program_id: programs[0].id
  },
  {
    name: "Phase 2",
    order: 1,
    objective: "To build multi-planar strength.",
    what_to_expect: "Increase your proprioception strength. The ability to perform strongly in any direction when demanded.",
    duration_days: 3,
    program_id: programs[0].id
  },
  {
    name: "Phase 3",
    order: 2,
    objective: "To build quick and powerful strength.",
    what_to_expect: "Rapid increase in acceleration. This phase will make you feel fast and powerful.",
    duration_days: 3,
    program_id: programs[0].id
  },
  {
    name: "Phase 4",
    order: 3,
    objective: "To give your strength a bigger gas tank.",
    what_to_expect: "A dramatic increase in strength endurance and conditioning.",
    duration_days: 3,
    program_id: programs[0].id
  },
])


workouts = Workout.create([
  {
    name: "Day 1",
    order: 0,
    description: "",
    phase_id: phases[0].id
  },
  {
    name: "Day 2",
    order: 1,
    description: "",
    phase_id: phases[0].id
  },
  {
    name: "Day 3",
    order: 2,
    description: "",
    phase_id: phases[0].id
  },
])


exercises = Exercise.create([
  {
    name: "Phase 1 Squat",
    order: 0,
    description: "Fast explosive concentric, slow eccentric",
    workout_id: workouts[0].id,
    sets: 5,
    min_reps: 3,
    max_reps: 3
  },
  {
    name: "Phase 1 Bench Press",
    order: 1,
    description: "",
    workout_id: workouts[0].id,
    sets: 3,
    min_reps: 3,
    max_reps: 3
  },
  {
    name: "High Pull",
    order: 2,
    description: "",
    workout_id: workouts[0].id,
    sets: 3,
    min_reps: 3,
    max_reps: 3
  },
  {
    name: "Weighted or body weight Pull-ups",
    order: 3,
    description: "Full lockout, done quickly, neutral grip",
    workout_id: workouts[0].id,
    sets: 2,
    min_reps: 5,
    max_reps: 5
  },
  {
    name: "Overhead Press (Push Press)",
    order: 4,
    description: "",
    workout_id: workouts[0].id,
    sets: 3,
    min_reps: 3,
    max_reps: 6
  },
  {
    name: "MAPS Side Chop",
    order: 5,
    description: "",
    workout_id: workouts[0].id,
    sets: 5,
    min_reps: 15,
    max_reps: 20
  },

  #Day 2 This is not fully updated and needs work to complete
  {
    name: "Phase 1 Deadlift",
    order: 0,
    description: "Ideally with bands",
    workout_id: workouts[1].id,
    sets: 5,
    min_reps: 3,
    max_reps: 3
  },
  {
    name: "Walking Lunges",
    order: 1,
    description: "Loaded with kettlebells, barbell, or dumbbells",
    workout_id: workouts[1].id,
    sets: 3,
    min_reps: 3,
    max_reps: 3
  },
  {
    name: "Weighted Dips",
    order: 2,
    description: "",
    workout_id: workouts[1].id,
    sets: 3,
    min_reps: 3,
    max_reps: 3
  },
  {
    name: "Weighted or body weight Pull-ups",
    order: 3,
    description: "Full lockout, done quickly, neutral grip",
    workout_id: workouts[1].id,
    sets: 2,
    min_reps: 5,
    max_reps: 5
  },
  {
    name: "Overhead Press (Push Press)",
    order: 4,
    description: "",
    workout_id: workouts[1].id,
    sets: 3,
    min_reps: 3,
    max_reps: 6
  },
  {
    name: "MAPS Side Chop",
    order: 5,
    description: "",
    workout_id: workouts[1].id,
    sets: 5,
    min_reps: 15,
    max_reps: 20
  },


  # Day 3
  {
    name: "Phase 1 Squat",
    order: 0,
    description: "Fast explosive concentric, slow eccentric",
    workout_id: workouts[2].id,
    sets: 5,
    min_reps: 3,
    max_reps: 3
  },
  {
    name: "Phase 1 Bench Press",
    order: 1,
    description: "",
    workout_id: workouts[2].id,
    sets: 3,
    min_reps: 3,
    max_reps: 3
  },
  {
    name: "High Pull",
    order: 2,
    description: "",
    workout_id: workouts[2].id,
    sets: 3,
    min_reps: 3,
    max_reps: 3
  },
  {
    name: "Weighted or body weight Pull-ups",
    order: 3,
    description: "Full lockout, done quickly, neutral grip",
    workout_id: workouts[2].id,
    sets: 2,
    min_reps: 5,
    max_reps: 5
  },
  {
    name: "Overhead Press (Push Press)",
    order: 4,
    description: "",
    workout_id: workouts[2].id,
    sets: 3,
    min_reps: 3,
    max_reps: 6
  },
  {
    name: "MAPS Side Chop",
    order: 5,
    description: "",
    workout_id: workouts[2].id,
    sets: 5,
    min_reps: 15,
    max_reps: 20
  },
])
