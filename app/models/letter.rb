class Letter < ActiveRecord::Base

  has_one :sender
  belongs_to :user, through :sender



end
