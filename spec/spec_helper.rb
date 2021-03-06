# ensure the following is AT THE TOP of your spec_helper.rb to get test coverage stats
require 'coveralls'
require 'simplecov'


SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
# replace following line with SimpleCov.start to get coverage stats locally
SimpleCov.start
# run `open coverage/index.html` from the command line to view details

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'rps.rb')

require 'byebug'
require 'capybara/rspec'
require "./spec/features/web_helper"
require 'capybara'
require 'rspec'

Capybara.app = Rps
