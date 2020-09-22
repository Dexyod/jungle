class Admin::DashboardController <  Admin::BaseAdminController

  def show
    @products = Product.count
    @categories = Category.all
  end
end
