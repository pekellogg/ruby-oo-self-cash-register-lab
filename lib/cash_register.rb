# require 'pry'

# fun thing about instance variables.... use them in other methods! *****

class CashRegister # building the FUNCTIONALITY of the cashregister

    attr_accessor :total, :discount, :quantity, :title, :item
    
    @item = []

    def initialize(discount = 0) # for OPTIONAL args, think about what the value should be from INITIALIZATION
        @total = 0
        @discount = discount
        @item = item
    end

    def add_item(title, price, quantity = 1) # this method impacts other methods... think about it!
        @title, @price, @quantity = title, price, quantity
        @total += (price * quantity)
        @item << self.item
    end

    def apply_discount
        if self.discount > 0
            self.total -= self.total * discount / 100 # removed .to_f from discount
            return "After the discount, the total comes to $#{self.total}."
        else
            return "There is no discount to apply."
        end
    end
    # binding.pry
end 


