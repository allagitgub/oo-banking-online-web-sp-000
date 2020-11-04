class BankAccount
  attr_accessor :balance, :status

  def initialize(name)
    balance = 1000
    status = "Open"
  end
end
