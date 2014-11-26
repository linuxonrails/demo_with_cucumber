When(/^I follow in first pagination number "(.*?)"$/) do |pagenumber|
	first(".pagination").click_link(pagenumber)
end

When(/^I follow in second pagination number "(.*?)"$/) do |pagenumber|
	all(".pagination")[1].click_link(pagenumber)
end
