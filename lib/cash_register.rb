class CashRegister
  attr_accessor :total, :discount, :last_item
  def initialize(discount=0)
    @items = []
    @total = 0
    @discount = discount
  end
  def add_item(title,price,quantity=1)
    @total += price*quantity
    quantity.times { @items << title }
    @last_item = self
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
  def void_last_transaction

  end
end
