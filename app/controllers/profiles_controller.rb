class ProfilesController < AdminController
  before_action :set_user, only: %i[ edit update ]
  before_action :verify_password, only: [:update]

  # GET /profiles/1/edit
  def edit
    @user.build_profile if @user.profile.blank?
  end

  # PATCH/PUT /profiles/1 or /profiles/1.json
  def update
    respond_to do |format|
      if @user.update(params_user)
        format.html { redirect_to @user, notice: "Perfil alterado com sucesso." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
 
  private
    def set_user
      @user = User.find(params[:id])
    end

    def params_user
      params_user = params.require(:user).permit(:email, :kind, :password, :password_confirmation, 
        profile_attributes: [:id, :first_name, :last_name, :gender, :birthdate])
    end

    def verify_password
      if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
        params[:user].extract!(:password, :password_confirmation)
      end
    end
end
