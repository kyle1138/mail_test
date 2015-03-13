class EmailProcessor
  def initialize(email)
    @email = email
  end

  def process

    # just to see if it reacts
    # Letter.create(title: "Something happened",  sender_id: 1, content:
    # "<h1>An email hit the server</h1>")
    # @sender = Sender.find_by(name: @email.from.token , host: @email.from.host)
    #   if @sender == nil
    #     @sender = Sender.create({name: @email.from.token , host: @email.from.host})
    #   end
    Letter.create!({ content: "#{@email.body}#{@email.from[:token]}#{@email.from[:host]}", sender_id: 2, title: @email.subject })


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
