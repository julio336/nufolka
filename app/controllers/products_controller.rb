class ProductsController < ApplicationController
  
  respond_to :html, :js
  
  def index
    @products = Product.all
    
    respond_to do |format|
         format.html
         format.js
       end
  end

  def show
    @product = Product.find(params[:id])
     respond_to do |format|
           format.html
           format.js
     end
  end

  def new
    @product = Product.new
    respond_to do |format|
         format.html
         format.js
       end
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      redirect_to @product, :notice => "Successfully created product."
    else
      render :action => 'new'
    end
    respond_to do |format|
      format.html { redirect_to @product}
      format.js
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to @product, :notice  => "Successfully updated product."
    else
      render :action => 'edit'
    end
  end
  
  
  def test
    @product = Product.find(params[:id])
  end  
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_url, :notice => "Successfully destroyed product."
  end
end
