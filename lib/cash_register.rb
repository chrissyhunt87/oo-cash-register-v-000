
class CashRegister
  attr_accessor :total

  def initialize(discount=0)
    @total = 0
    @items = []
    apply_discount(discount)
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    @items << title
  end

  def apply_discount(discount)
    discount_percent = @discount / 100
    new_total = @total * discount_percent
  end

end
