require_relative '../../config/application'

# this is where you should use an ActiveRecord migration to

class ManyToMany < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table

    create_table :owners do |t|
    	t.string :name
    	t.datetime :created_at
      t.timestamps null: false
    end

     create_table :task_owners do |t|
     	# belongs_to :tasks
     	# belongs_to :owners
     	t.integer :task_id
     	t.integer :owner_id
     	t.timestamps null: false
    end

  end
end

