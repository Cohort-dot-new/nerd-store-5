class Product < ActiveRecord::Base
  def sale_message
    if price.to_f < 10
      "Discount Item!"
    else
      "Everyday Value!"
    end
  end

  def tax
    price.to_f * 0.09
  end

  def total
    price.to_f + tax
  end

  def discount_class_name
    if sale_message == "Discount Item!"
      return "discount-item"
    else
      return ""
    end
  end
end
