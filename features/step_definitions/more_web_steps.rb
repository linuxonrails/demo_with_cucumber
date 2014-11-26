# encoding: UTF-8

Then /^the element matched by "([^\"]*)" should be visible$/ do |locator|
  assert page.find(locator).visible?
end

Then /^the element matched by "([^\"]*)" should not be visible$/ do |locator|
  assert (not page.find(locator, visible: false).visible?)
end

Then /^I should see the button "(.*?)"$/ do |text|
  page.should have_selector('button', text)
end

When /^I follow "(.*?)" in the iframe "(.*?)"$/ do |link, iframe|
  within_frame(iframe) do
       click_link(link)
  end
end

When /^I press "(.*?)" in the iframe "(.*?)"$/ do |text, iframe|

  within_frame(iframe) do
       step "I press \"#{text}\""
       #page.driver.browser.frame_focus(iframe.parent)
  end
end

Then /^I should see "(.*?)" in the iframe "(.*?)"$/ do |text, iframe|
	within_frame(iframe) do
		if page.respond_to? :should
			page.should have_content(text)
		else
			assert page.has_content?(text)
    end
  end
end

When /^(?:|I )press "([^"]*)"$/ do |button|
  click_button(button)
  #step 'I wait for the ajax request to finish'
end

When /^(?:|I )follow "([^"]*)"$/ do |link|
  click_link(link)
  #step "I wait for the ajax request to finish"
  #sleep 1
end

When /^I wait for the ajax request to finish$/ do
  if Capybara.current_driver != :rack_test # webkit or selenium
    start_time = Time.now
    until page.evaluate_script('jQuery.isReady&&jQuery.active==0') or (start_time + 5) < Time.now
      sleep 0.1
    end
  end
end

Then /^I should see the image "(.+)"$/ do |image|
    page.should have_xpath("//img[@src=\"#{image}\"]")
end

When(/^show me the javascript console log$/) do
  puts page.driver.console_messages.to_yaml
end

Then /^I debug$/ do
  breakpoint
  0
end

Then /^show me the cookies!$/ do
	require 'pp'
  pp page.driver.browser.get_cookies
end

Then /^I should see "(.*?)" in main title$/ do |string|
  with_scope("h1") do
    step "I should see \"#{string}\""
  end
end

Then(/^I should see "(.*?)" as main title$/) do |text|
  assert_equal text, find('h1').text
end

Then /^I should see "(.*?)" in (page|main)( content)?$/ do |string, ignore1, ignore2|
  step %-I should see "#{string}" within "#page\-content"-
end

Then /^(?:|I )should be redirected to (.+)$/ do |page_name|
  current_path = URI.parse(current_url).path
  current_query = URI.parse(current_url).query
  if !current_query.eql?('') and !current_query.nil?
    current_path = current_path + "?" + current_query.to_s
  end
  current_path.should == path_to(page_name)
end

Then /^within ([^,]*), (.+)$/ do |parent, step|
  with_scope(parent) { step step }
end

Then(/^I should see the next lines as ([^:]+):$/) do |parent, table|
  assert_equal table.raw.join(' '), find(selector_for(parent)).text
end

Then(/^I should have (\d+) as status code$/) do |status_code|
  assert_equal status_code.to_i, page.status_code
end

