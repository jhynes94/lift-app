# lift-app
A fitness app focused around lifting routines and growth

## Background
This app was inspired by the MAPS workout routines as seen on the Mind Pump podcast. The goal being to add the ability to more easily see what routine you're on and to better track your growth.

## API Documentation
Rails is now using `rswag`. To update the documentation, add new specs in /spec/integration/*_spec.rb, then run:
```
rake rswag:specs:swaggerize
```
View the results at `http://localhost:3000/api-docs/`

## Goal(s)

1. Learn Ruby on Rails and React for personal development purposes.
2. Display a workout program for better ability to fitness information.
3. Enable better tracking of workout progression including adding weight amounts, sets and reps accomplished.
4. Cater to long term fitness goals by reccomneding new programs.
5. Create an Coach Interface for adding new workout plans into system.

## Frameworks used:
* Ruby on Rails for Backend API
    * Using Devise
    * Using SQLite
* React for FrontEnd
    * Using Bootstarp
    * Using Axios

### To Be completed:
* Add CI/CD Infrastructure
* Add Docker with Kubernetes
* Use Azure for infrastucture


## Notes
The way this is currently setup with a SQL backend lends itself to less flexibility. The data must be structured in a more rigid way, so if the program style was to change drastically a full re-write may be needed.
