class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def name=(name)
    raise_error NameChangeNotAllowedError "You can't change the name on the account"
  end

  def deposit(amount)
    self.balance += amount
  end

  def display_balance
    puts "Your balance is $#{self.balance}."
  end
end
