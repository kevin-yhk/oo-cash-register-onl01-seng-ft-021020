class CashRegister
  
  attr_accessor :total, :discount, :items, :last_amount  
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
    @last_amount = 0 
  end 
  
  def add_item(item, price, quantity = 1)
    self.total += price * quantity 
    self.last_amount = price * quantity
    self.items += item * quantity
  end 
    