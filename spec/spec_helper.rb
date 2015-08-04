require 'bundler/setup'
Bundler.setup

ENV['RAILS_ENV'] = 'test'

require File.expand_path('../dummy/config/environment.rb',  __FILE__)
require 'rspec/rails'

require 'waldo/rails'
I18n.locale = :en
