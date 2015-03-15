class Sender < ActiveRecord::Base

  has_and_belongs_to_many :letters

end
