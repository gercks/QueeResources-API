# frozen_string_literal: true

class QueeresourcesController < OpenReadController
  before_action :set_queeresource, only: %i[update destroy]

  # GET /queeresources
  def index
    if params[:filter]
      @queeresources = Queeresource.where('user_id' => params[:filter][:user_id])
    else
      @queeresources = Queeresource.all
    end
    render json: @queeresources
  end

  def show
    render json: Queeresource.find(params[:id])
  end

  # POST /queeresources
  def create
    @queeresource = current_user.queeresources.build(queeresource_params)

    if @queeresource.save
      render json: @queeresource, status: :created, location: @queeresource
    else
      render json: @queeresource.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /queeresources/1
  def update
    if @queeresource.update(queeresource_params)
      render json: @queeresource
    else
      render json: @queeresource.errors, status: :unprocessable_entity
    end
  end

  # DELETE /queeresources/1
  def destroy
    @queeresource.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_queeresource
    @queeresource = current_user.queeresources.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def queeresource_params
    params.require(:queeresource).permit(:user_id, :name, :description,
                                         :location, :website, :orgtype,
                                         :popfocus)
  end

  private :set_queeresource, :queeresource_params
end
