class CashRegister
  attr_accessor :total, :discount
  def initialize(discount=0)
    @items = []
    @total = 0
    @discount = discount
  end
  def add_item(title,price,quantity=1)
    @total += price*quantity
    @items << quantity.times.do title
  end
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
    @total = @total - @total*@discount/100
    "After the discount, the total comes to $#{@total}."
  end
  end
  def items
    @items
  end
end
