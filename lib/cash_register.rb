class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity, :last_total
  attr_reader :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @quantity = quantity
    @last_total = @total
    @total = @total + @price * @quantity
    
    if @quantity > 1
      counter = 0 
      while counter < @quantity
      @items << @title
     counter += 1 
   end 
    else
      @items << @title
    end
     
  end
  
  def apply_discount
    if @discount == 0 
      "There is no discount to apply."
    else
      @total = @price - (@price * (@discount.to_f / 100))
      @total = @total.to_i
      "After the discount, the total comes to $#{@total}."
    end
  end
  
  def void_last_transaction
    
  end

  
end
