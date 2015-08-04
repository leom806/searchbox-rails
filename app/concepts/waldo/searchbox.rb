module Waldo
  class Searchbox < Cell::Concept
    def self.absolute_view_path
      "#{Waldo::Rails.root}/app/concepts"
    end

    self.view_paths << self.absolute_view_path

    def show
      render
    end

    private
    def scopes
      model.scopes
        .reject { |s| s.name == :fulltext }
        .map { |s| Waldo::Rails::ScopePresenter.new(s) }
    end

    def fulltext_scope
      model.scopes.find { |s| s.name == :fulltext }
    end
  end
end
