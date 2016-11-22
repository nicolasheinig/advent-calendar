class DoorsController < ApplicationController
  def index
    @image = Image.all.sample
  end

  def show
  end
end
