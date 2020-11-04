class Transfer

  attr_accessor :sender, :amount, :receiver

  def initialize(sender, receiver, amount)
    @status = "pending"
  end
end
