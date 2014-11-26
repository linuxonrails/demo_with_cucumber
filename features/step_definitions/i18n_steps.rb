# encoding: UTF-8

Given(/^I have (english|spanish from spain|spanish from mexico|chinese|catalan) as language$/) do |language|
  unless defined?(SAMPLE_LANGUAGE_ACCEPT_LANGUAGE_STRING)
    SAMPLE_LANGUAGE_ACCEPT_LANGUAGE_STRING = {
      "spanish from spain"  => "es-es,es;en,en-us",
      "spanish from mexico" => "es-mx,en;q=0.8,es-es;q=0.6,es;q=0.4,en-us;q=0.2",
      "english"    					=> "en,en-gb",
      "chinese" 						=> "zh-cn,zh;q=0.8,en;q=0.7,es-es",
      "catalan"             => "ca",
    }
  end
	add_headers("Accept-Language" => SAMPLE_LANGUAGE_ACCEPT_LANGUAGE_STRING[language])
end

When(/^I click in "(.*?)"$/) do |text|
  find('span', text: text).click()
end
