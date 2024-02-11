module SavingsAccount
    def self.interest_rate(balance)
      @balance = balance
      if @balance >= 0 && @balance < 1000        
        0.5
      elsif @balance >= 1000 && @balance < 5000
        1.621
      elsif @balance >= 5000
        2.475
      else
        3.213
      end
    end
  
    def self.annual_balance_update(balance)
      @balance = balance
        (@balance / 100 *  interest_rate(@balance))  + @balance
    end
  
    def self.years_before_desired_balance(current_balance, desired_balance)
        years = 0
        while current_balance < desired_balance do 
          current_balance = annual_balance_update(current_balance)
          years += 1
        end
        years
      end
    end
  
p SavingsAccount.years_before_desired_balance(200.75, 214.88)