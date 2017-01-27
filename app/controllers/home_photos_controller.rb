class HomePhotosController < ApplicationController
 
def destroy
    @homephoto = HomePhoto.find(params[:id])
    home = @homephoto.home
    
    @homephoto.destroy
    @homephotos = HomePhoto.where(home_id: home.id)
    respond_to :js
  end

end
