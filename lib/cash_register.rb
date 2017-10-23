
class CashRegister
  attr_accessor :total

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price)
    @total += price
    @@items << title
  end

  

end
