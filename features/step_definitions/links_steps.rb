# encoding: UTF-8

Then /^this link should go to (.*)$/ do |page_name|
  assert @link, "but @link is undefined!"
  assert_equal path_to(page_name), @link['href']
end

Then(/^this link go to the same page$/) do
  assert @link, "but @link is undefined!"
  assert_equal "#", @link['href']
end

Then /^I should see "(.*?)" as pill link$/ do |string|
  assert @link = page.find("ul.nav.nav-pills li a", text: string)
end

Then /^I should not see "(.*?)" as pill link$/ do |string|
  assert page.has_no_css?("ul.nav.nav-pills li a", text: string)
end

Then /^this link should not be an active pill$/ do
  assert (@link.parent_element[:class].nil? || !@link.parent_element[:class].include?("active"))
end

Then /^this link should be an active pill$/ do
  assert @link.parent_element[:class].include?("active")
end

Then /^I should see "(.*?)" as link$/ do |string|
  # assert @link = page.find_link('a', text: string)
  assert @link = page.find_link(string)
end

Then /^I should not see "(.*?)" as link$/ do |string|
  step %-I should not see "#{string}" within "a"-
end

Then /^I should see "(.*?)" as button link$/ do |string|
  step %-I should see "#{string}" as link-
  assert @link[:class].include?('btn')
end

Then /^I should see "(.*?)" as disabled link$/ do |string|
  step %-I should see "#{string}" as link-
  assert @link[:class].include?('disabled')
end

Then /^this link should not be disabled$/ do
  assert @link
  # assert (@link.parent_element[:class].nil? || !@link.parent_element[:class].include?('disabled'))
  assert !@link.parent_element[:class].include?('disabled')
end

# tabs

Then /^I should see "(.*?)" as tab link$/ do |text|
  assert page.has_no_css?('ul.nav.nav-tabs li.active a', text: text)
  assert @link = page.find('ul.nav.nav-tabs li a', text: text)
end

Then /^I should see "(.*?)" as active tab link$/ do |text|
  assert_equal 1, page.all('ul.nav.nav-tabs li.active').size
  assert @link = page.find('ul.nav.nav-tabs li.active a', text: text)
end

Then /^I should not see "(.*?)" as active tab link$/ do |text|
  assert page.has_no_css?('ul.nav.nav-tabs li.active a', text: text)
end
