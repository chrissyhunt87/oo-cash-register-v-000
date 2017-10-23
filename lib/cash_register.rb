class CashRegister
  attr_accessor :total

  @@items = []

  def initialize(discount=0)
    @total = 0
    if discount > 0
      self.apply_discount
    end
  end

  def add_item(title, price)
    @total += price
    @@items << title
  end

end
