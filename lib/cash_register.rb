class CashRegister
  attr_accessor :total, :discount
  @@items = []
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
    @@items << title
  end
  def apply_discount
    return_message = ""
    if discount == 0
      return_message = "There is no discount to apply."
    else
      calculated = (total*discount)/100
      @total -= calculated
      return_message = "After the discount, the total comes to $#{@total}."
    end
    return_message
  end
end
