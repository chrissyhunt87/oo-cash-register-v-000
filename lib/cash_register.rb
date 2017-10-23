
class CashRegister
  attr_accessor :total

  def initialize(discount=0)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    @items << title
  end

  def apply_discount
  end

end
