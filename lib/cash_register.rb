class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction_amount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  