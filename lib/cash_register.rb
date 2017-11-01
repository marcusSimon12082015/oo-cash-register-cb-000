class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
      @total = 0
      @discount = discount
  end
  def add_item(title,price,quantity = 0)
    if quantity == 0
      @total +=price
    else
      @total += (price * quantity)
    end
  end
  def apply_discount
    calculated = (total*discount)/100
    @total -= calculated
    return "After the discount, the total comes to #{@total}."
  end
end
