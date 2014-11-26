# encoding: UTF-8

Given /^I am logged out$/ do
	step "I go to the logout page"
  step %-I should see "Goodbye!"-
  step %-I should not see "Close session"-
end

When /^I fill the login form correctly$/ do
 	fill_in("Username or Email address", :with => 'marty')
	fill_in("password", :with => 'gallina')
	click_button "Sign in"
# step "show me the page"
end

Given /^I wait (\d+) seconds$/ do |seconds|
  sleep seconds.to_i
end

Given /I am logged in$/ do
	step "I am on the login page"
	step "I fill the login form correctly"
end

Then(/^I should see the welcome message for this user$/) do
  # user = clientdb.execute("select fullname from users where id_usuario=#{@current_id}").first
  step %-I should see "Hello Marty! Wellcome to the demo page!"- # user['fullname']
end
