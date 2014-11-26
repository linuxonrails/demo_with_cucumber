# encoding: UTF-8

Then /^(?:|I )should see "([^\"]*)" as current page in pagination$/ do |text|
  assert page.has_css? 'div.pagination li.active'
  assert_equal text, find('div.pagination li.active').text.strip
end

Then /^(?:|I )should see "([^\"]*)" as link in pagination$/ do |link|
  with_scope("div.pagination") do
    step %-I should see "#{link}" as link-
  end
end

Then /^(?:|I )should not see "([^\"]*)" in pagination$/ do |text|
  with_scope("div.pagination") do
    step %-I should not see "#{text}"-
  end
end

Then(/^I should not see the pagination$/) do
  assert_equal 0, page.all("div.pagination").size
end
