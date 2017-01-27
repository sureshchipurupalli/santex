class HomesController < ApplicationController

before_action :set_home, only: [:show, :edit, :update]
  # User must be authneticated before every controller action, except for show
  before_action :authenticate_user!, except: [:show, :index ]

  def new
    @home = Home.new
  end

  def show
   # @messages = @conversation.messages.find(params[:conversation_id])
    
    @home_photos = @home.home_photos
     @floorplan_images = @home.floorplan_images

#    render text: @home.to_yaml and return    
#    @home_info_enquery = HomeInfoEnquery.new
       @enquery = HomeInfoEnquery.new
       @enquery_info_enquery  = HomeInfoEnquery.where("home_id = ?",@home.id).present?

   # @booked = Reservation.where("listing_id = ? AND user_id =?",@listing.id,current_user.id).present? if current_user

   # @reviews= @listing.reviews
   # @hasReview = @reviews.find_by(user_id: current_user.id) if current_user
    #redirect_to url_for(:controller => :messages, :action => :create)
    #render 'messages_controller/create'

  end




  def index
    @homes = Home.all
  end

  def create
    @home = Home.new(home_params)
    if @home.save
      if params[:images]
        params[:images].each do |image|
          @home.home_photos.create(image: image)
        end
        end
      if params[:floorplan_images]
         params[:floorplan_images].each do |floorplan_image|
         @home.floorplan_images.create(floorplan_image: floorplan_image)
       end
       end
     
      @floorplan_images = @home.floorplan_images
      @home_photos = @home.home_photos
      redirect_to edit_home_path (@home), notice: "Saved..."
    else
      render :new
    end
   # puts @listing.errors.inspect
 end
  
  def update
    if @home.update(home_params)
      if params[:images]
        params[:images].each do |image|
          @home.home_photos.create(image: image)
        end
        end
        if params[:floorplan_images]
        params[:floorplan_images].each do |floorplan_image|
          @home.floorplan_images.create(floorplan_image: floorplan_image)
        end
        end
        

       
      
      redirect_to edit_home_path(@home), notice: "Updated..."
    else
      render :edit
    end
    puts @home.errors.inspect
  end

  def edit
     @home_photos = @home.home_photos
     @floorplan_images = @home.floorplan_images

  end
  
  def destroy
    @home = Home.find(params[:id])
    @home.destroy

    respond_to do |format|
      format.html { redirect_to homes_path }
     # format.json { head :no_content }
    end
 end

  private
  def set_home
    @home = Home.find(params[:id])
  end
 
  def home_params
    params.require(:home).permit( :home_type, :name, :no_of_bedrooms, :building_method, :series, :description , :sft, :no_of_bathrooms, 
                                  :other )
  end


end
