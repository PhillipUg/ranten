class RantsController < ApplicationController
  before_action :set_rant, only: %i[show edit update destroy]
  before_action :authorize

  # GET /rants
  def index
    @rants = Rant.all.order('created_at DESC').includes(:author)
    @users = User.with_attached_photo.all.order('created_at DESC')
  end

  # GET /rants/1
  def show; end

  # GET /rants/new
  def new
    @rant = current_user.rants.new
  end

  # GET /rants/1/edit
  def edit; end

  # POST /rants
  def create
    @rant = current_user.rants.new(rant_params)

    if @rant.save
      redirect_to rants_url, notice: 'Rant was successfully created.'
    else
      flash[:alert] = "Content can't be blank"
      redirect_to :rants
    end
  end

  # PATCH/PUT /rants/1
  def update
    if @rant.update(rant_params)
      redirect_to rants_path, notice: 'Rant was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rants/1
  def destroy
    @rant.destroy
    redirect_to rants_url, alert: 'Rant deleted!'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_rant
    @rant = Rant.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def rant_params
    params.permit(:content)
  end
end
