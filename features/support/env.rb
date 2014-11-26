# RSpec
require 'rspec/expectations'

# Webrat

require 'capybara'
require 'capybara/cucumber'
require 'capybara-webkit'
require 'unicode_utils'
require 'date'
require 'cgi'
require 'nokogiri'
require_relative 'parse_data'

if ENV['KILL_OLD_WEBKIT_SERVER'] == 'true'
	# matar webkit_servers que hayan en ejecución para evitar errores extraños
	pids = `ps ax | grep "capybara" | grep "webkit_server" | grep -v "grep" | awk '{print $1}'`.split
	pids.each {|pid| puts `kill -KILL #{pid}`}
	pids = `ps ax | grep "capybara" | grep "webkit_server" | grep -v "grep" | awk '{print $1}'`.split
	# after killing... PIDS: #{pids.inspect}"
end

Capybara.javascript_driver = :webkit

Capybara.default_selector = :css
Capybara.run_server = false
Capybara.default_driver = :webkit
Capybara.app_host = "http://localhost:8000"
Capybara.save_and_open_page_path = Dir.pwd

Capybara.configure do |config|
  config.match = :prefer_exact
end

require 'test/unit/assertions'
World(Test::Unit::Assertions)


require 'capybara-screenshot'
require 'capybara-screenshot/cucumber'

