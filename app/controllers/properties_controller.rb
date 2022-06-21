class PropertiesController < ApplicationController
  before_action :set_property, only: %i[ show edit update destroy ]

  def index
    @properties = Property.all
  end

  def show
    @closest_stations = @property.closest_stations
  end

  def new
    @property = Property.new
    2.times { @property.closest_stations.build }
  end

  def edit
    @property.closest_stations.build
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to @property, notice: "物件を登録しました"
    else
      render :new
    end
  end

  def update
    if @property.update(property_params)
      redirect_to @property, notice: "物件を編集しました"
    else
      render :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_url, notice: "物件を削除しました"
  end

  private
    def set_property
      @property = Property.find(params[:id])
    end

    def property_params
      params.require(:property).permit(
        :property_name, :rent, :address, :property_age, :notes,
        closest_stations_attributes: %i[
          track_name station_name walking_time
        ],
      )
    end
end
