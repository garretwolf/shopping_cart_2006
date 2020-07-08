class ShoppingCart
attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity.delete("items").to_i
    @products = []
    @number_of_products = 0
  end

  def add_product(product)
    @products << product
  end

  def details
    {
      name: @name,
      capacity: @capacity
    }
  end

  def total_number_of_products
    @products.each do |product|
      @number_of_products += product.quantity
    end
    @number_of_products
  end

  def is_full?
    if total_number_of_products > @capacity
      return true
    else
      return false
    end
  end
# Did not finish this method
  def products_by_category(category)
    @products.find_all do |product|
      product.category == category
    end
  end
  end
