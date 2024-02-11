module Port
    IDENTIFIER = :PALE
  
    def self.get_identifier(city)
      city[0..3].upcase.to_sym
    end
  
    def self.get_terminal(ship_identifier)
       if ship_identifier[0..2] == "GAS" || ship_identifier[0..2] == "OIL"
            :A 
       else 
        :B 
       end
    end
  end
  
p  Port.get_terminal(:OIL123) 