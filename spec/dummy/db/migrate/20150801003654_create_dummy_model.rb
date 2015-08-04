class CreateDummyModel < ActiveRecord::Migration
  def change
    create_table :dummy_models do |t|
      t.string :field
    end
  end
end
