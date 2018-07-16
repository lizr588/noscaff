class WelcomeController < ApplicationController
  def index
    @product = Product.new
    @user = User.new
  end
  #
  # def create_users
  #   user = User.create(name: params[:name], age: params[:age])
  #   redirect_to users_path
  # end

  def users
    #adding this instead of the create_users action
    if params[:name] != nil
      user = User.create(name: params[:name], age: params[:age])
    end
    @users = User.all
  end

  def create_products
    product = Product.create(product_params)
    redirect_to products_path
  end

  def edit_user
    @user = User.find(user_params[:id])
    puts @user
  end

  def edit_product
    @product = Product.find(params[:id])
  end

  def products
    @products = Product.all
  end

#without this, the form is less secure bc anything can be passed through
  private
    def product_params
      params.require(:product).permit(:name, :price, :quantity)
    end

    def user_params
      params.require(:user).permit(:name, :age, :id)
    end

end
