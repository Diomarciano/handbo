class LengthClassesController < ApplicationController
  before_action :set_length_class, only: [:show, :edit, :update, :destroy]

  # GET /length_classes
  # GET /length_classes.json
  def index
    @length_classes = LengthClass.all
  end

  # GET /length_classes/1
  # GET /length_classes/1.json
  def show
  end

  # GET /length_classes/new
  def new
    @length_class = LengthClass.new
  end

  # GET /length_classes/1/edit
  def edit
  end

  # POST /length_classes
  # POST /length_classes.json
  def create
    @length_class = LengthClass.new(length_class_params)

    respond_to do |format|
      if @length_class.save
        format.html { redirect_to @length_class, notice: 'Length class was successfully created.' }
        format.json { render :show, status: :created, location: @length_class }
      else
        format.html { render :new }
        format.json { render json: @length_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /length_classes/1
  # PATCH/PUT /length_classes/1.json
  def update
    respond_to do |format|
      if @length_class.update(length_class_params)
        format.html { redirect_to @length_class, notice: 'Length class was successfully updated.' }
        format.json { render :show, status: :ok, location: @length_class }
      else
        format.html { render :edit }
        format.json { render json: @length_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /length_classes/1
  # DELETE /length_classes/1.json
  def destroy
    @length_class.destroy
    respond_to do |format|
      format.html { redirect_to length_classes_url, notice: 'Length class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_length_class
      @length_class = LengthClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def length_class_params
      params.require(:length_class).permit(:length_class_id, :value)
    end
end
