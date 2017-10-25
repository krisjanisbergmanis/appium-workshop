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


Given /^I am on welcome screen$/ do
  $driver.alert_accept
  if $driver.find_elements(:id, 'close_intro').any?
    $driver.find_element(:id, 'close_intro').click
  end

  if $driver.find_elements(:xpath, '//android.widget.Button[contains(@text, "OK")]').any?
    $driver.alert_accept
  end
  sleep(4)
end

Then /^I select Transports$/ do
  if  $driver.find_element(:xpath, '//android.widget.TextView[contains(@text, "Transports")]').displayed?
      $driver.find_element(:xpath, '//android.widget.TextView[contains(@text, "Transports")]').click
  end
end

Then /^I print in console$/ do
  print $driver.find_element(:xpath, '//android.widget.TextView[contains(@text, "Transports")]')
end 

Then /^I press back$/ do
  $driver.back
end


Then /^I select menu button$/ do
  if $driver.find_element(:id, 'Menu opened').displayed?
    $driver.find_element(:id, 'Menu opened').click
  end
  sleep(4)
end

Then /^I click Meklesanas filtri$/ do
  if $driver.find_element(:xpath, '//android.widget.TextView[contains(@text, "Transports")]').displayed?
    $driver.find_element(:xpath, '//android.widget.TextView[contains(@text, "Transports")]').click
  end
  sleep(4)
end
