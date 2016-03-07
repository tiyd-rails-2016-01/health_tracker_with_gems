require "administrate/base_dashboard"

class PerformedExerciseDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    exercise: Field::String,
    duration: Field::Number,
    calories_burned: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    exercise_type_id: Field::Number,
    done_on: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :exercise,
    :duration,
    :calories_burned,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :exercise,
    :duration,
    :calories_burned,
    :created_at,
    :updated_at,
    :exercise_type_id,
    :done_on,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :exercise,
    :duration,
    :calories_burned,
    :exercise_type_id,
    :done_on,
  ]

  # Overwrite this method to customize how performed exercises are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(performed_exercise)
  #   "PerformedExercise ##{performed_exercise.id}"
  # end
end
