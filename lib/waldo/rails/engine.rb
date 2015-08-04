module Waldo
  module Rails
    class Engine < ::Rails::Engine
      initializer "waldo-rails.allow_concepts_assets" do |app|
        app.config.cells.with_assets = ["waldo/searchbox"]
      end

      initializer 'cells.update_asset_paths' do |app|
        Array(app.config.cells.with_assets).each do |cell_class|
          app.config.assets.paths += cell_class.camelize.constantize.prefixes
        end
      end
    end
  end
end

