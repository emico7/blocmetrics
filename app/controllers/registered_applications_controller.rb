class RegisteredApplicationsController < ApplicationController

  def show
    @registered_application = RegisteredApplication.find(params[:id])
    @events = @registered_application.events.group_by(&:name)
  end

  def new
    @user = current_user
    @registered_application = RegisteredApplication.new
  end

  def create
    @user = current_user
    @registered_application = @user.registered_applications.build(registered_application_params)

    if @registered_application.save
      flash[:notice] = "Your site was saved successfully."
      redirect_to [@user, @registered_application]
    else
      flash.now[:alert] = "There was an error. Please try again.."
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy

    @user = current_user
    @registered_application = RegisteredApplication.find(params[:id])

    if @registered_application.destroy
      flash[:notice] = "\"#{@registered_application.name}\" was deleted successfully."
      redirect_to [@user]
    else
      flash.now[:alert] = "There was an error deleting the site."
      render :show
    end
  end

  private

  def registered_application_params
    params.require(:registered_application).permit(:name, :url)
  end
end
