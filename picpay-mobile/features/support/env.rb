# frozen_string_literal: true

require 'appium_lib'
require 'appium_console'
require 'faker'
require 'pry'

DEVICE = ENV['DEVICE_TYPE']

caps = Appium.load_appium_txt file: File.expand_path("caps/#{DEVICE}/appium.txt", __dir__), verbose: true
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
