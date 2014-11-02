class BitsController < ApplicationController
  def index
    @bits = Bit.all
  end

  def show
    @bit = Bit.find(params[:id])
  end

  def new
  end

  def create
    @bit = Bit.new(bit_params)
    @bit.save
    redirect_to @bit
  end

  private

  def bit_params
    params.require(:bit).permit(:body, :author)
  end

end
