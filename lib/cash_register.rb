
class CashRegister

  attr_accessor :total, :discount, :items, :last_amount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  
  def add_item(title,price,quantity = 1)
    if quantity > 1
      x = 0
      while x < quantity
        @items << title
        x += 1
      end
    else
      @items << title
    end
    @total += price*quantity
    @last_amount = @total
    @total
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
