#!/usr/bin/env ruby
LESSON_1 = %w(
about_asserts 
about_control_statements 
about_true_and_false
about_nil
about_iteration
about_strings
)

LESSON_1.each { |koan| require koan }