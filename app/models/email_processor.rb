class EmailProcessor


  def self.process(email)
    Letter.create!( content: email.body, sender: email.from )
  end

end
