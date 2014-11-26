# encoding: UTF-8

Then /^I should see "(.*?)" as head title$/ do |title|
	assert_equal 1, all('head > title', visible: false).size,
		"but the page has #{all('head > title', visible: false).size} title tags and this tag should be (SEO) & only one time"

puts find('head > title', visible: false).all.inspect
  assert_equal title, find('head > title', visible: false).text
end

Then /^I should see "(.*?)" as head description$/ do |text|
  assert_equal text, find('head > meta[name=description]', visible: false)[:content]
end

Then(/^I should see (.*) as canonical( link)?$/) do |url, ignore_param|
	assert all('head > link[rel=canonical]', visible: false).size != 0, "but it hasn't a canonical link in head"
	assert !(all('head > link[rel=canonical]', visible: false).size > 1), "but it hasn't only one canonical link in head: #{all('head > link[rel=canonical]', visible: false).size} found"
  assert_equal url, find('head > link[rel=canonical]', visible: false)[:href]
end

Then(/^the google bot should not index this page$/) do
  assert_equal "noindex,follow", find('head > meta[name=robots]', visible: false)[:content]
end

Then(/^I should see (.*) as alternative english page$/) do |url|
	assert all('head > link[rel=alternate][hreflang=en]', visible: false).size != 0, "but it hasn't an alternate link in head"
	assert !(all('head > link[rel=alternate][hreflang=en]', visible: false).size > 1), "but it hasn't only one english alternate link in head: #{all('head > link[rel=alternate][hreflang=en]', visible: false).size} found"
  assert_equal url, find('head > link[rel=alternate][hreflang=en]', visible: false)[:href]
end
