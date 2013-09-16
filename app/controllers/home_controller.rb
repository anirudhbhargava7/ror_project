class HomeController < ApplicationController

def index

@product = Product.all
respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
      format.xml {render xml: @products}
    end 

end
end
