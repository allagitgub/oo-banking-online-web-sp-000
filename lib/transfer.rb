class Transfer

  attr_accessor :sender, :amount, :receiver

  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
  end

  def valid?
    self.sender.value? && self.receiver.valid?
  end
end
