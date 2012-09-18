module ProductsHelper
  def print_price(price)
      number_to_currency price
    end
    
  def print_description(description)
    a = String
    a = description.split('.')
    a.each do |z|
      puts a[1...a.length]
    end
  end
end
