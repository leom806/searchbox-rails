module Searchbox
  module Rails
    def self.root
      File.expand_path '../../..', __FILE__
    end
  end
end

require 'searchbox/rails/engine'
require 'searchbox/rails/scope_presenter'
require 'searchbox/rails/version'
require 'cells'
require 'cells-erb'
require 'sass/rails'
require 'jquery/rails'
require 'rails'
require "#{Searchbox::Rails.root}/app/concepts/searchbox/cell"
