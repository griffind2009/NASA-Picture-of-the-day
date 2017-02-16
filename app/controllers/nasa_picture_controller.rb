class NasaPictureController < ApplicationController
  def index
    @nasa_info = NasaApi.get_api_info
  end
end
