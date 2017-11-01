class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
      @total = 0
      @discount = discount
      @items = []
  end

  def add_item(title,price,quantity = 0)
    if quantity == 0
      @total +=price
      @items << title
    else
      @total += (price * quantity)
      quantity.times{
        @items << title
      }
    end
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
