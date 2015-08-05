module Searchbox
  module Rails
    class ScopePresenter < SimpleDelegator
      def initialize(scope)
        @scope = scope
        __setobj__(@scope)
      end

      def label
        _name = if bool?
                  "#{criteria}?"
                else
                  name
                end
        _name.to_s.humanize
      end

      def order
        bool? ? 1 : -1
      end

      def bool?
        @scope.kind_of? Searchbox::BoolScope
      end
    end
  end
end
