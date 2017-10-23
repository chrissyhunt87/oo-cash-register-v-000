class CashRegister
  attr_accessor :total

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    self.apply_discount
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    @items << title
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      discount_percent = @discount / 100
      new_total = @total * discount_percent
      "After the discount, the total comes to $#{new_total}."
    end
  end

  def items
    @items
  end

end
