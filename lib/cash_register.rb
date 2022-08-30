class CashRegister
    attr_accessor :discount, :total, :prev_total, :items

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.prev_total = price * quantity
        self.total += self.prev_total
        quantity.times do   
            self.items << title
        end
    end

end
