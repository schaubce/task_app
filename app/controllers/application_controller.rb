class ApplicationController < ActionController::Base
  protect_from_forgery
  include CasAuthentication
  before_filter :login_required

#  def find_user_by_username(username)
#    user = User.find_or_initialize_by_username((session[:cas_user]).upcase) 
#    if user.active_user == nil && user.first_name == nil && user.last_name == nil
#      person = PersonRecord::Person.find_by_username session[:cas_user].upcase
#      user.first_name = person.first_and_middle_name.split(" ").first
#      user.last_name = person.last_name
#      user.active_user = true
#      user.save!
#    end
#      user.active_user = true
#      user.save!
    
#    user
#  end  
end
