# encoding: UTF-8

Then(/^I should see "(.*?)" as h1$/) do |text|
  assert_equal text, find('h1').text
end

Then(/^I should see "(.*?)" as h2$/) do |text|
  assert_equal text, find('h2').text
end
