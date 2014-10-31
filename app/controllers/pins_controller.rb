class PinsController < ApplicationController
  respond_to :html, :xml, :json #This was not part of the video but it was needed to make it run
  before_action :set_pin, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @pins = Pin.all.order("created_at DESC")
    respond_with(@pins)
  end

  def show
    respond_with(@pin)
  end

  def new
    @pin = current_user.pins.build
  end

  def edit
  end

  def create
    @pin = current_user.pins.build(pin_params)
    if @pin.save
      redirect_to @pin, notice: 'Pin successfully created.'
    else
      render :new 
    end
  end

  def update
    @pin.update(pin_params)
    respond_with(@pin)
  end

  def destroy
    @pin.destroy
    respond_with(@pin)
  end

  private
    def set_pin
      @pin = Pin.find(params[:id])
    end

    def correct_user
      @pin = current_user.pins.find_by(id: params[:id])
      redirect_to pins_path, notice: "not authorized to edit pin" if @pin.nil?
    end

    def pin_params
      params.require(:pin).permit(:description, :image)
      #what you permit the user to do in the pins!
    end

end
