class PagesController < ApplicationController
  def index
    @homes = Home.all

#   render text: request.params[:heome_type].to_yaml and return
#  if (params[:home_type] && Home.all.collect(&:home_type).include?(params[:home_type]))
#     @home_photos = Home.send(params[:home_id][:home_type])
#      @home_spec = Home.where( home_type = "Single wide")


  end

  def new

  @select_home = Page.new
 
   end  
 def search
if request.params[:param1] == "single_wide"
 home = request.params[:param1]
elsif
#end
request.params[:param2] == "double_wide"
 home = request.params[:param2]
elsif 
request.params[:param3] == "triple_wide"
 home = request.params[:param3]
elsif
request.params[:param4] == "hot_deals"
 home = request.params[:param4]
else
flash[:error] = "invalid category"
end

 #home  = params[:param1]
 #home  = params[:param2]
 #home  = params[:param3]
# render text: home.to_yaml and return

if home == "single_wide"
@single_wide = Home.single_wide

#end
elsif home == "double_wide"
@single_wide = Home.double
#end

elsif home == "triple_wide"
@single_wide = Home.triple
#render :text => "triple wide"
#end
elsif home == "hot_deals"
#@hotdeals = Home.hotdeals
render :text => "hot deals"
#end
else
flash[:error] = "invalid category"
end
 
end

 def single_wide

@single_wide = Home.single_wide

end


def double_wide

@double_wide = Home.double

end


def triple_wide

@triple_wide = Home.triple

end

def other

@other = Home.others

end


def hotdeals

@hotdeals = Home.hotdeals

end





private
  def select_home_params
    params.require(:select_home).permit( :select_home)
end




end
