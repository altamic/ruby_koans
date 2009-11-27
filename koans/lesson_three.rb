#!/usr/bin/env ruby
LESSON_3 = %w(
about_scope
about_blocks
about_sandwich_code
about_inheritance
about_modules
about_message_passing
about_proxy_object_project
)

LESSON_3.each { |koan| require koan }
