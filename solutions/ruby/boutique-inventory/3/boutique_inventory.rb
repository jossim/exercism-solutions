class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    names = []

    @items.each do |item|
      names.push(item[:name])
    end

    names.sort
  end

  def cheap
    @items.select { |item| item[:price] < 30 }
  end

  def out_of_stock
    @items.select { |item| item[:quantity_by_size].empty? }
  end

  def stock_for_item(name)
    item_array = @items.select { |item| item[:name] == name }
    item = item_array.first
    item[:quantity_by_size]
  end

  def total_stock
    total = 0

    @items.each do |item|
      item[:quantity_by_size].each do |_size, quantity|
        total += quantity
      end
    end

    total
  end

  private

  attr_reader :items
end
