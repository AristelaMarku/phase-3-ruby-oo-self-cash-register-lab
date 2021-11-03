
require 'pry'

class CashRegister

   

    attr_accessor :total, :discount, :items

    def initialize(discount=0)
        @total = 0
        @discount = discount  
        @items=[]

    end


    def  add_item (title, price,quantity = 1)
        self.total+=price*quantity
        @items<<title
    end
    
    def apply_discount
        if  @discount==0
            "There is no discount to apply."
        else 
            self.total-=self.total * @discount /100
            "After the discount, the total comes to $#{self.total}."
        end
    end



end


 stela=CashRegister.new(10)