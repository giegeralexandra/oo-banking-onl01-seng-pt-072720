class BankAccount

        attr_accessor :balance, :status
        attr_reader :name 

    def initialize (name)
        @name = name 
        @balance = 1000
        @status = "open"
    end

    def deposit(amount)
        @balance +=(amount)
        @balance 
    end

    def display_balance
        return "Your balance is $#{@balance}."
    end

    def valid?
        @balance > 0 && @status == "open"
    end

    def close_account 
        @balance = 0 
        @name = nil 
        @status = "closed"
    end




end
