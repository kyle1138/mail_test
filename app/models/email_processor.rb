class EmailProcessor < ActiveRecord::Base


  def self.process(email)
    Letter.create!({ content: email.body, sender: email.from })
  end

end
