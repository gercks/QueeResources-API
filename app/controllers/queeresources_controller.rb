# frozen_string_literal: true

class QueeresourcesController < OpenReadController
  before_action :set_queeresource, only: %i[show update destroy]

  # GET /queeresources
  def index
    @queeresources = Queeresource.all

    render json: @queeresources
  end

  # GET /queeresources/1
  def show
    render json: @queeresource
  end

  # POST /queeresources
  def create
    @queeresource = current_user.queeresources.build(queeresource_params)
    # @queeresource = current_user.queeresources.build(queeresource_params)

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


  # Use callbacks to share common setup or constraints between actions.
  def set_queeresource
    @queeresource = current_user.Queeresources.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def queeresource_params
    params.require(:queeresource).permit(:user_id, :name, :description,
                                         :location, :website, :orgtype,
                                         :popfocus)
  end

  private :set_queeresource, :queeresource_params
end
