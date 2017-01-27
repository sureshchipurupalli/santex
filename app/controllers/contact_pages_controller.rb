class ContactPagesController < ApplicationController
 
 def new
 @contact_page =  ContactPage.new
 end

 def create
#  render text: contact_page_params.to_yaml and return

  @contact_page = ContactPage.new(contact_page_params)
   if @contact_page.valid?
     @contact_page.save
     flash[:notice]="details saved successfully"
     redirect_to contact_pages_path
  else 
   flash[:notice]="details not saved"
#   redirect_to contact_pages_path 
    render :new
  end
#  if @contact_page.errors.any?
 #  flash[:notice]="there are errors"
 # flash[:notice]= @contact_page.errors[:first_name]
# end


end

private
  def contact_page_params
    params.require(:contact_page).permit( :first_name, :last_name, :email, :phone, :do_you_have_land, :moving_time_frame, :financing, :town_planning_to_build, :state, :assist_you)
  end
end
