class PasswordManagersController < ApplicationController
  before_action :set_password_manager, only: %i[ show edit update destroy ]

  # GET /password_managers or /password_managers.json
  def index
    @password_managers = PasswordManager.all
  end

  # GET /password_managers/1 or /password_managers/1.json
  def show
  end

  # GET /password_managers/new
  def new
    @password_manager = PasswordManager.new
  end

  # GET /password_managers/1/edit
  def edit
  end

  # POST /password_managers or /password_managers.json
  def create
    @password_manager = PasswordManager.new(password_manager_params)

    respond_to do |format|
      if @password_manager.save
        format.html { redirect_to password_manager_url(@password_manager), notice: "Password manager was successfully created." }
        format.json { render :show, status: :created, location: @password_manager }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @password_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /password_managers/1 or /password_managers/1.json
  def update
    respond_to do |format|
      if @password_manager.update(password_manager_params)
        format.html { redirect_to password_manager_url(@password_manager), notice: "Password manager was successfully updated." }
        format.json { render :show, status: :ok, location: @password_manager }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @password_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /password_managers/1 or /password_managers/1.json
  def destroy
    @password_manager.destroy

    respond_to do |format|
      format.html { redirect_to password_managers_url, notice: "Password manager was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_password_manager
      @password_manager = PasswordManager.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def password_manager_params
      params.require(:password_manager).permit(:name, :password)
    end
end
