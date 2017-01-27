class HomeInfoEnqueriesController < ApplicationController


def new
@enquery = HomeInfoEnquery.new

end



def create

@home_info_enquery  = HomeInfoEnquery.new(home_info_enquery_params)
# if @home_info_enquery.valid?
     @home_info_enquery.save
     flash[:notice]="details saved successfully"
 
 # else
  # flash[:notice]="details not saved"
#   redirect_to contact_pages_path
#    render :new
#  end

 end

private
  def home_info_enquery_params
    params.require(:home_info_enquery).permit( :name, :email, :phone, :comments, :home_id )
  end



end
