class DatabaseNamesController < ApplicationController
  before_action :set_database_name, only: [:show, :edit, :update, :destroy]

  # GET /database_names
  # GET /database_names.json
  def index
    @database_names = DatabaseName.all
  end

  # GET /database_names/1
  # GET /database_names/1.json
  def show
  end

  # GET /database_names/new
  def new
    @database_name = DatabaseName.new
  end

  # GET /database_names/1/edit
  def edit
  end

  # POST /database_names
  # POST /database_names.json
  def create
    @database_name = DatabaseName.new(database_name_params)

    respond_to do |format|
      if @database_name.save
        format.html { redirect_to @database_name, notice: 'Database name was successfully created.' }
        format.json { render :show, status: :created, location: @database_name }
      else
        format.html { render :new }
        format.json { render json: @database_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /database_names/1
  # PATCH/PUT /database_names/1.json
  def update
    respond_to do |format|
      if @database_name.update(database_name_params)
        format.html { redirect_to @database_name, notice: 'Database name was successfully updated.' }
        format.json { render :show, status: :ok, location: @database_name }
      else
        format.html { render :edit }
        format.json { render json: @database_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /database_names/1
  # DELETE /database_names/1.json
  def destroy
    @database_name.destroy
    respond_to do |format|
      format.html { redirect_to database_names_url, notice: 'Database name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_database_name
      @database_name = DatabaseName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def database_name_params
      params.require(:database_name).permit(:name)
    end
end
