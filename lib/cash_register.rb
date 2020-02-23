class CashRegister
  
  attr_accessor :total, :discount, :items, :last_amount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      count = 0
      while count < quantity
        @items << item
        count += 1
      end
    else
      @items << item
      @last_amount = @total
    end
  end
  
  def apply_discount()
    if @discount > 0
      @discount = @discount/100.to_f
      @total -= @total * @discount
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction()
    @total -= @last_amount
  end 
end 