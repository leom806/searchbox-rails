require 'waldo/rails/engine'
require 'waldo/rails/scope_presenter'
require 'waldo/rails/version'
require 'cells'
require 'cells-erb'
require 'sass/rails'
require 'jquery/rails'
require 'rails'

module Waldo
  module Rails
    def self.root
      File.expand_path '../../..', __FILE__
    end
  end
end

require 'concepts/waldo/searchbox'
