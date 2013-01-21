class CulinariesController < ApplicationController
  # GET /culinaries
  # GET /culinaries.json
  def index
    @culinaries = Culinary.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @culinaries }
    end
  end

  # GET /culinaries/1
  # GET /culinaries/1.json
  def show
    @culinary = Culinary.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @culinary }
    end
  end

  # GET /culinaries/new
  # GET /culinaries/new.json
  def new
    @culinary = Culinary.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @culinary }
    end
  end

  # GET /culinaries/1/edit
  def edit
    @culinary = Culinary.find(params[:id])
  end

  # POST /culinaries
  # POST /culinaries.json
  def create
    @culinary = Culinary.new(params[:culinary])

    respond_to do |format|
      if @culinary.save
        format.html { redirect_to @culinary, notice: 'Culinary was successfully created.' }
        format.json { render json: @culinary, status: :created, location: @culinary }
      else
        format.html { render action: "new" }
        format.json { render json: @culinary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /culinaries/1
  # PUT /culinaries/1.json
  def update
    @culinary = Culinary.find(params[:id])

    respond_to do |format|
      if @culinary.update_attributes(params[:culinary])
        format.html { redirect_to @culinary, notice: 'Culinary was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @culinary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /culinaries/1
  # DELETE /culinaries/1.json
  def destroy
    @culinary = Culinary.find(params[:id])
    @culinary.destroy

    respond_to do |format|
      format.html { redirect_to culinaries_url }
      format.json { head :no_content }
    end
  end
end
