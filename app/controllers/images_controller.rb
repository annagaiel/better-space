class ImagesController < ApplicationController

  def destroy
    @image = Image.find(params[:id])
    space_listing = @image.space_listing
    @image.destroy
    respond_to :js
  end
end
