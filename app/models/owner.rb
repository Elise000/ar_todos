require_relative '../../config/application'

class Owner < ActiveRecord::Base
	has_many :task_owners
  has_many :tasks, :through => :task_owners
end
