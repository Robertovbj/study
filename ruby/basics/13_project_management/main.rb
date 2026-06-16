# ------------ Project Management ------------
# One class per file, and files usually are on lib folder

# ----------- Required files -----------
# Here on root folder, lib is a subfolder
# 
# From docs:
# require_relative(string) → true or false 
# Ruby tries to load the library named string relative to the directory 
# containing the requiring file. If the file does not exist a LoadError 
# is raised. Returns true if the file was loaded and false if the file was 
# already loaded before.
#
# Notice that .rb is implicit, so you can omit it when requiring files.
require_relative 'lib/sort'

# For "require"
# 
# If the feature is an absolute path (e.g. starts with '/'), the feature
# will be loaded directly using the absolute path. If the feature is an
# explicit relative path (e.g. starts with './' or '../'), the feature
# will be loaded using the relative path from the current directory.
# Otherwise, the feature will be searched for in the library directories
# listed in the $LOAD_PATH

# So the following might raise a LoadError if the file is not in the 
# $LOAD_PATH
# require 'sort/bubble_sort'
# 
# But the following will work because we are requiring the file using a
# relative path
require './lib/sort/bubble_sort'

# The convention is using require_relative for your own code, and require
# for files in gems or standard library.
# 
# Ruby DOESNT load variables when a file is required, it only loads classes,
# methods and constants.

# ----------- Gems and Bundler -----------
# Gems are packages of code that can be shared and reused by other developers.
# They are usually hosted on RubyGems.org, and can be installed using the
# gem command.
# Bundler is a tool that helps you manage your gems and their dependencies. It
# allows you to specify which gems your project depends on, and it will automatically
# install and manage those gems for you. It uses a Gemfile to specify the gems 
# and their versions, and a Gemfile.
# 
# To install a gem, you can use the gem command:
# gem install <gem_name>
# 
# To create a Gemfile, you can run:
# bundle init
# 
# This will create a Gemfile in your project directory. You can then edit the Gemfile
# to specify the gems you want to use. For example:
# bundle add <gem_name>
# This will add the gem to your Gemfile and install it. You can also specify a version:
# bundle add <gem_name> -v <version>
# 
# To set ruby version for your project, you can run:
# rbenv local <ruby_version>
# This will create a .ruby-version file in your project directory, which will 
# specify the ruby version for your project.