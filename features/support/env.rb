require "appium_lib"
require "appium_console"
require "pry"
require 'allure-cucumber'

caps = Appium.load_appium_txt file: File.expand_path("caps/appium.txt", __dir__), verbose: true
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object


Cucumber::Core::Test::Step.module_eval do
   def name
     return text if text == 'Before hook'
     return text if text == 'After hook'
     "#{source.last.keyword}#{text}"
   end
end
