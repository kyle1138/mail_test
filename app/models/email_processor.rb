class EmailProcessor
  def initialize(email)
    @email = email
  end

  def process

    # just to see if it reacts
    # Letter.create(title: "Something happened",  sender_id: 1, content:
    # "<h1>An email hit the server</h1>")

    # trying to create sender info in a table
    @recip = @email.from[:email].split("@")
    @user = User.where(:name => @recip[0])
    unless @user == nil
      Letter.create!({ content: @email.body, sender: @email.from[:token] + "@" + @email.from[:host],
        title: @email.subject, recipient: @user.name})
      # @sender = Sender.find_by(name: @email.from[:token] , url: @email.from[:host])
      #   if @sender == nil
      #     @sender = Sender.create({name: @email.from[:token] , url: @email.from[:host]})
      #   end

    end

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
