class Song < ActiveRecord::Base
  attr_accessible :number, :name, :length
  
  named_scope :ac, lambda{|name| {:conditions => ["name LIKE ?", "%#{name}%"]}}
end
