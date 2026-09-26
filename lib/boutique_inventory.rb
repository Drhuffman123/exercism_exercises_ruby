class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    if @items.empty?
      @items
    elsif @items.size == 1
      [@items[0][:name]]
    else
      @items.map{|item| item[:name]}.sort
    end
  end

  def cheap
    if @items.empty?
      false
    else
      @items.count{|item| (item[:price] < 20.0) }
    end
  end

  def out_of_stock
    raise 'Implement the BoutiqueInventory#out_of_stock method'
  end

  def stock_for_item(name)
    raise 'Implement the BoutiqueInventory#stock_for_item method'
  end

  def total_stock
    raise 'Implement the BoutiqueInventory#total_stock method'
  end

  private
  attr_reader :items
end
