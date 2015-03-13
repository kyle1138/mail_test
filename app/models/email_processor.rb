class EmailProcessor
  def initialize(email)
    @email = email
  end

  def process

    # just to see if it reacts
    Letter.create(title: "Something happened",  sender_id: 1, content:
    "<h1>An email hit the server</h1>")

    Letter.create!({ content: @email.body, sender: @email.from })

  end
end





#
#
# class EmailProcessor
#
#   def self.process(email)
#     Letter.create(title: "Be cool!",  sender_id: 2, content:
#     "<h1>An email hit the server</h1>")
#
#     Letter.create!({ content: email.body, sender: email.from })
#
#   end
#
# end
