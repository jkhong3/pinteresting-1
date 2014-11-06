class AmpsController < ApplicationController
  before_action :set_amp, only: [:show, :edit, :update, :destroy]

  # GET /amps
  # GET /amps.json
  def index
    @amps = Amp.all
  end

  # GET /amps/1
  # GET /amps/1.json
  def show
  end

  # GET /amps/new
  def new
    @amp = Amp.new
  end

  # GET /amps/1/edit
  def edit
  end

  # POST /amps
  # POST /amps.json
  def create
    @amp = Amp.new(amp_params)

    respond_to do |format|
      if @amp.save
        format.html { redirect_to @amp, notice: 'Amp was successfully created.' }
        format.json { render :show, status: :created, location: @amp }
      else
        format.html { render :new }
        format.json { render json: @amp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amps/1
  # PATCH/PUT /amps/1.json
  def update
    respond_to do |format|
      if @amp.update(amp_params)
        format.html { redirect_to @amp, notice: 'Amp was successfully updated.' }
        format.json { render :show, status: :ok, location: @amp }
      else
        format.html { render :edit }
        format.json { render json: @amp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amps/1
  # DELETE /amps/1.json
  def destroy
    @amp.destroy
    respond_to do |format|
      format.html { redirect_to amps_url, notice: 'Amp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amp
      @amp = Amp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def amp_params
      params[:amp]
    end
end
