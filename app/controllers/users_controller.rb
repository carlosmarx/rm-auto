class UsersController < AdminController
  before_action :set_user, only: %i[ show edit update destroy ]

  def index
    @users = User.includes(:profile, :group, :dealer).all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path, notice: "Usuário cadastrado com sucesso."
    else
      render :new
    end
  end

  def show
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:email, :kind, :group, :dealer, :password, :password_confirmation)
    end

    def get_groups_options
      @groups = Group.all
    end

    def get_groups_options
      @groups = Dealer.all
    end

end
