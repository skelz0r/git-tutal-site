class Feature < ActiveRecord::Base
  attr_accessible :description, :level, :name, :plugin_name, :solution
  has_one :user
end
