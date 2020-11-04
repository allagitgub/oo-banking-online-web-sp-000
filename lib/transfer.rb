class Transfer

  attr_accessor :sender, :amount, :receiver, :status

  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
    @amount = amount
  end

  def valid?
    self.sender.value? && self.receiver.valid?
  end
end
