require_relative '../../config/application'
require_relative '../models/task'
require_relative '--/models/owner'
require_relative '../models/task_owner'
require 'byebug'

# puts "Put your application code in #{File.expand_path(__FILE__)}"


answer_arr = ARGV
action = answer_arr[0] # delete no; #complete no; #add xxxxxx
input = answer_arr[1..-1].join(" ")


case action

    when "add"
      Task.add(input)
    when "delete"
      no = input.to_i
      # byebug
      Task.delete(no)
   when "complete"
      no = input.to_i
      Task.complete(no)
    when "list"
      Task.list
end

