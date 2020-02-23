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
    end
  end