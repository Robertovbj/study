# ---------- Lint and RuboCop ----------
# Default linting tool for ruby: Rubocop
# Can be installed using the gem command:
# gem install rubocop
# 
# Its used to check for code style violations, errors and 
# code conventions. Can also be used to fix some of the 
# violations automatically.
# 
# Commands:
# 
# rubocop --auto-gen-config
# Generates a .rubocop_todo.yml file with all the violations
# found in the project. This file can be used to ignore
# certain violations or to configure the rules for the project.
# 
# rubocop
# Runs rubocop on the project and displays the violations found.
# 
# rubocop -a
# Runs rubocop on the project and automatically fixes the violations
# that can be fixed automatically.
# 
# rubocop -A
# Runs rubocop on the project and automatically fixes all violations
# that can be fixed automatically, including those that may require
# manual intervention.
# 
# rubocop -S
# Runs rubocop on the project and displays the violations found,
# with the URL of the documentation for each violation.
#
# Rubocop can be configured using a .rubocop.yml file in the project 
# root directory. This can be used to enable or disable certain rules, 
# or to configure the rules for the project.
# It wont be shown here since its planned to follow the default rubocop rules,
# but more on it can be found here: https://www.theodinproject.com/lessons/ruby-linting-and-rubocop
# 
#