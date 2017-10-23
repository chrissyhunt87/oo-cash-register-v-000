class CashRegister
  attr_accessor :total, :last_subtotal

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    self.apply_discount
  end

  def add_item(title, price, quantity=1)
    @last_subtotal = price * quantity
    @total += price * quantity
    quantity.times do
      @items << title
    end
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

  def void_last_transaction
    @total -= @last_subtotal
  end

end
