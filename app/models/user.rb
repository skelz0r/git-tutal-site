class User < ActiveRecord::Base
  attr_accessible :name, :password

  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :password, :on => :create

  def self.authenticate(name,password)
    self.find_by_name_and_password(name,password)
  end
end
