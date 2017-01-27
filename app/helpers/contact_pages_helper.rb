module ContactPagesHelper
def errors_for(model, attribute)
  
  if model.errors[attribute].present?
   if model.errors[:first_name].join(", ")
    render :text => "empty"
 end
  
    content_tag :span, :class => 'error_explanation' do
      model.errors[attribute].join(", ")
    end
  end
end

end
