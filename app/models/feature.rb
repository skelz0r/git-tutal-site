class Feature < ActiveRecord::Base
  attr_accessible :description, :level, :name, :plugin_name, :solution
  belongs_to :user
end
