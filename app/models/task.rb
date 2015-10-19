require_relative '../../config/application'

class Task < ActiveRecord::Base

  has_many :task_owners
  has_many :owners, :through => :task_owners

  def self.list
    self.all.each_with_index do |value, index|
      puts "#{index + 1}.   " + value.item + "----->" + "#{value.status}"
    end
  end

  def self.delete(no)
    task_arr = self.all
    task_arr[no-1].destroy
    list
  end

  def self.add(input)
    self.create(:item => input, :status => 'No')
    list
  end

  def self.complete(no)
    task_arr = self.all
    task_arr[no-1].update(:status => 'Yes')
    list
  end

end

