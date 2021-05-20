class DealersController < AdminController
  before_action :set_dealer, only: %i[ show edit update destroy ]
  before_action :get_groups_options, only: %i[new create edit update]

  # GET /dealers or /dealers.json
  def index
    @dealers = Dealer.includes(:group).all
  end

  # GET /dealers/1 or /dealers/1.json
  def show
  end

  # GET /dealers/new
  def new
    @dealer = Dealer.new
  end

  # GET /dealers/1/edit
  def edit
  end

  # POST /dealers or /dealers.json
  def create
    @dealer = Dealer.new(dealer_params)

    respond_to do |format|
      if @dealer.save
        format.html { redirect_to @dealer, notice: "Loja cadastrada com sucesso." }
        format.json { render :show, status: :created, location: @dealer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dealer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dealers/1 or /dealers/1.json
  def update
    respond_to do |format|
      if @dealer.update(dealer_params)
        format.html { redirect_to @dealer, notice: "Loja atualizada com sucesso." }
        format.json { render :show, status: :ok, location: @dealer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dealer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dealers/1 or /dealers/1.json
  def destroy
    @dealer.destroy
    respond_to do |format|
      format.html { redirect_to dealers_url, notice: "Loja apagada com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dealer
      @dealer = Dealer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dealer_params
      params.require(:dealer).permit(:name, :status, :group_id)
    end

    def get_groups_options
      @groups = Group.all
    end
    
end
