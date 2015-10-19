require_relative '../../config/application'

# this is where you should use an ActiveRecord migration to

class CreateTodosSchema < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :tasks do |t|
      t.string   :item
      t.string   :status
      t.datetime :created_at
      t.datetime :updated_at

    end

  end
end