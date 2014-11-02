class BitsController < ApplicationController
  def index
    @bits = Bits.all
  end

  def show
    find_bit
  end

  def new
  end

  def create
    find_bit
    @bit.save
    redirect_to @bit
  end

  private

  def find_bit
    @bit = Bit.find(params[:id])
  end

  def bit_params
    params.require(:bit).permit(:body, :author)
  end

end
