class Letter < ActiveRecord::Base


  belongs_to :user
  has_one :sender


end
