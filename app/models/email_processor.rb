class EmailProcessor
  def initialize(email)
    @to = email.to
    @from = email.from
    @body = email.body
    @subject = email.subject
    @email = email
  end

  def process

    # just to see if it reacts
    # Letter.create(title: "Something happened",  sender_id: 1, content:
    # "<h1>An email hit the server</h1>")

    # trying to create sender info in a table
    @recip = @to[0][:token]
    @user = User.where(:name => @to)
    unless @user == nil
      Letter.create!({ content: @body, sender: @from, title: @subject, recipient: @recip})
      # @sender = Sender.find_by(name: @email.from[:token] , url: @email.from[:host])
      #   if @sender == nil
      #     @sender = Sender.create({name: @email.from[:token] , url: @email.from[:host]})
      #   end
      
    end

  end

  private

  def pick_meaningful_recipient(recipients)
    recipients.find { |address| address =~ /@mailtailor.space$/ }
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
