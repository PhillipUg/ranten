class RantsController < ApplicationController
  before_action :set_rant, only: [:show, :edit, :update, :destroy]

  # GET /rants
  def index
    @rants = Rant.all
  end

  # GET /rants/1
  def show
  end

  # GET /rants/new
  def new
    @rant = Rant.new
  end

  # GET /rants/1/edit
  def edit
  end

  # POST /rants
  def create
    @rant = Rant.new(rant_params)

    if @rant.save
      redirect_to @rant, notice: 'Rant was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rants/1
  def update
    if @rant.update(rant_params)
      redirect_to @rant, notice: 'Rant was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rants/1
  def destroy
    @rant.destroy
    redirect_to rants_url, notice: 'Rant was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rant
      @rant = Rant.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rant_params
      params.fetch(:rant, {})
    end
end
