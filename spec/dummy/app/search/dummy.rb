module Search
  class Dummy < Waldo::Search
    model DummyModel

    scope :author, ->(v) {}
    fields :name
    is :active, -> {}
    has :attachment, -> {}
  end
end
