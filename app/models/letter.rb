class Letter < ActiveRecord::Base


  has_one :user
  has_one :sender


end
