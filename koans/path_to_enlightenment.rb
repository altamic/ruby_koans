# ruby_koans by EdgeCase for http://rubynetto.cataniarb.org 
# The path to Ruby Enlightenment starts with the following:

begin
  require 'highline/import'
rescue LoadError
  require 'rubygems'
  require 'highline/import'
end

LESSON_1 = %w(
about_asserts 
about_control_statements 
about_true_and_false
about_nil
about_iteration
about_strings
)

LESSON_2 = %w(
about_arrays
about_array_assignment
about_hashes
about_classes
about_methods
about_class_methods
about_exceptions
)

LESSON_3 = %w(
about_scope
about_blocks
about_sandwich_code
about_inheritance
about_modules
about_message_passing
about_proxy_object_project
)

LESSON_4 = %w(
about_triangle_project
about_triangle_project_2
about_scoring_project
about_dice_project
about_extra_credit
)

lesson_number = ask("Which Lesson?  ", Integer) { |q| q.in = 1..4 }.to_s

def lesson_number.constantize
  name = "LESSON_#{self}"
  Object.const_get(name) || Object.const_missing(name)
end

lesson_number.constantize.each { |koan| require koan}
