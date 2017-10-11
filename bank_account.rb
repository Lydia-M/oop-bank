class BankAccount
	attr_reader :balance

	def initialize(opening_balance, account_holder)
	    @balance = opening_balance
	end
    
    def deposit(amount)
        @balance += amount # += is the same thing as saying equals @balance + amount
    end
    
    def withdraw(amount)
        @balance -= amount
    end
    
    def transfer(amount, account)
        withdraw(amount)
        account.deposit(amount)
    end
    
end

