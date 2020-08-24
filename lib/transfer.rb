class Transfer
  
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender,receiver,amount)
    @sender = sender 
    @status = "pending" 
    @amount = amount 
    @receiver = receiver 
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
       if (@sender.balance > @amount) && (@sender.valid?) && (@status == "pending") && (receiver.valid?)
          @sender.balance -= @amount
          @sender.balance
          @receiver.balance += @amount
          @receiver.balance 
          @status = "complete"
          @status
        else 
          @status = "rejected"
          @status 
          return "Transaction rejected. Please check your account balance."
        end 
  end

  def reverse_transfer 
    if @status == "complete"
      @receiver.balance -= @amount 
      @sender.balance += @amount 
      @status = "reversed"
      @status
    end

  end



end
