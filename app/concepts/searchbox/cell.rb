module Searchbox
  class Cell < Cell::Concept
    cache :show, ->(m) { m.to_s }

    def self.absolute_view_path
      "#{Searchbox::Rails.root}/app/concepts"
    end

    self.view_paths << self.absolute_view_path

    def show
      render
    end

    private
    def scopes
      model.scopes
        .reject { |s| s.name == :fulltext }
        .map { |s| Searchbox::Rails::ScopePresenter.new(s) }
    end

    def has_scopes?
      scopes.any?
    end

    def filter_active?
      scopes.any? { |s| s.value }
    end

    def filter_class
      filter_active? ? "searchbox__filter-icon--active" : "searchbox__filter-icon"
    end

    def fulltext_scope
      model.scopes.find { |s| s.name == :fulltext }
    end
  end
end
