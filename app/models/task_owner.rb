require_relative '../../config/application'

class TaskOwner < ActiveRecord::Base
	belongs_to :task
  belongs_to :owner
end

