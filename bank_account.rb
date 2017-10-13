class BankAccount
	attr_reader :balance
    @@minimum_opening_balance = 200 #class variable because it is about creating ALL bank accounts, not just one
    
	def initialize(opening_balance, account_holder)
	    if opening_balance < @@minimum_opening_balance
            raise ArgumentError
        end
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
    
    def self.update_minimum_balance(amount)
        @@minimum_opening_balance = amount
    end
    
end

