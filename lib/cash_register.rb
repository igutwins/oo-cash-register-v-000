class CashRegister
  attr_accessor :total
  def initialize(discount=nil)
    @total = 0
  end
  def add_item(title,price)
    @total = @total + price
  end
end
