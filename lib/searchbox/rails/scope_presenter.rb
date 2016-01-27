module Searchbox
  module Rails
    class ScopePresenter < SimpleDelegator
      def initialize(scope)
        @scope = scope
        __setobj__(@scope)
      end

      def label
        text = bool? ? criteria : name
        I18n.t(text, scope: 'searchbox.label')
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
