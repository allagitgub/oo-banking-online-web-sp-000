class Transfer

  attr_accessor :sender, :amount, :receiver, :status

  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
    @amount = amount
  end

  def valid?
    self.sender.valid? && self.receiver.valid?
  end

  def execute_transaction
    sender.balance += amount
    receiver.balance -= amount
    self.status = "completed"
  end
end
