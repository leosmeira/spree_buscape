Spree::ProductsController.class_eval do
  def buscape
    @products = Spree::Product.active
  end
end
