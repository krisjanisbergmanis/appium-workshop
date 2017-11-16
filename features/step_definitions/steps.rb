# These are the 'step definitions' which Cucumber uses to implement features.
#
# Each step starts with a regular expression matching the step you write in
# your feature description.  Any variables are parsed out and passed to the
# step block.
#
# The instructions in the step are then executed with those variables.
#
# In this example, we're using rspec's assertions to test that things are happening,
# but you can use any ruby code you want in the steps.
#
# The '$driver' object is the appium_lib driver, set up in the cucumber/support/env.rb
# file, which is a convenient place to put it as we're likely to use it often.
# This is a different use to most of the examples;  Cucumber steps are instances
# of `Object`, and extending Object with Appium methods (through
# `promote_appium_methods`) is a bad idea.
#
# For more on step definitions, check out the documentation at
# https://github.com/cucumber/cucumber/wiki/Step-Definitions
#
# For more on rspec assertions, check out
# https://www.relishapp.com/rspec/rspec-expectations/docs


Given /^I am on create filter page$/ do
  @tests.filters_test.close_intro
end


Given /^I open filter params$/ do
  @tests.filters_test.open_filter_params
end

Given /^I submit filter$/ do
  @tests.filters_test.open_filter_params
end

Given /^I open on Transports category$/ do
  @pages.page_create_filter.open_category("Transports")
end

Given /^I am on parameters page$/ do
  @pages.page_paremeters.visible?
end

Given /^I set filter parameters$/ do
  @pages.page_paremeters.set_name("Test Name")
  @pages.page_paremeters.set_parameter("GADS", "1999", "2002")
  @pages.page_paremeters.save_filter
end

Given /^I select menu$/ do
  @pages.page_side_menu.select_menu
end

Given /^I select (.*) menu category$/ do |name|
  @pages.page_side_menu.select_menu_category(name)
end

Given /^I select existing filter$/ do
  @pages.page_existing_filters.select_existing_filter
end

Given /^I delete filter$/ do
  @pages.page_edit_filter.delete_filter
end