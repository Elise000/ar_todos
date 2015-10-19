require 'faker'
require_relative '../config/application'

10.times do
 Task.create :item => Faker::Lorem.sentence,
             :status => ['Yes', 'No'].sample
end