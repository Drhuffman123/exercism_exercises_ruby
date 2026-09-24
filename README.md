# exercism_exercises_ruby
https://github.com/Drhuffman123/exercism_exercises_ruby

Example code for https://exercism.org in Ruby

Exercism exercises using Ruby (and ports from my Crystal-lang repo)

Version 0.0.4 [![CI](https://github.com/Drhuffman123/exercism_exercises_ruby/actions/workflows/blank.yml/badge.svg)](https://github.com/Drhuffman123/exercism_exercises_ruby/actions/workflows/blank.yml)

* Setup (Locally)
  * L Setup Git auth locally:
    * `git config --global user.name "Your GitHub Username"`
    * `git config --global user.email "your-email@example.com"`
  * L Setup keyring and git locally
    * `sudo apt update && sudo apt install gnome-keyring`
    * `git init`
  * L Setup Ruby & Rubocop Dependencies locally:
    * `sudo apt install ruby-rspec-core`
    * `sudo apt install rubocop`
  * Config Bundler locally:
    * `bundle install --path vendor/bundle`

* Run tests
  * `rubocop -A`
  * `rspec`

* Comments
  * 2026-09-22: Set up repo and add first example "HelloWorld"
  * 2026-09-23: Add example "Lasagna"  
  * 2026-09-24: Add example "Attendee"
