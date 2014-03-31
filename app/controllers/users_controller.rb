class UsersController < ApplicationController
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      redirect_to edit_user_path(@user)
    else
      render 'edit'
    end
  end

  def show

  end

  def destroy

  end

end                                                                         
