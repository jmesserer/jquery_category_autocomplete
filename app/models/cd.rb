class Cd < ActiveRecord::Base
  attr_accessible :name
  has_many :songs
  
  named_scope :ac, lambda{|name| {:conditions => ["name LIKE ?", "%#{name}%"]}}
end
