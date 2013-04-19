class MultimediaController < ApplicationController
  # GET /multimedia
  # GET /multimedia.json
  def index
    @multimedia = Multimedium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @multimedia }
    end
  end

  # GET /multimedia/1
  # GET /multimedia/1.json
  def show
    @multimedium = Multimedium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @multimedium }
    end
  end

  # GET /multimedia/new
  # GET /multimedia/new.json
  def new
    @multimedium = Multimedium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @multimedium }
    end
  end

  # GET /multimedia/1/edit
  def edit
    @multimedium = Multimedium.find(params[:id])
  end

  # POST /multimedia
  # POST /multimedia.json
  def create
    @multimedium = Multimedium.new(params[:multimedium])

    respond_to do |format|
      if @multimedium.save
        format.html { redirect_to @multimedium, notice: 'Multimedium was successfully created.' }
        format.json { render json: @multimedium, status: :created, location: @multimedium }
      else
        format.html { render action: "new" }
        format.json { render json: @multimedium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /multimedia/1
  # PUT /multimedia/1.json
  def update
    @multimedium = Multimedium.find(params[:id])

    respond_to do |format|
      if @multimedium.update_attributes(params[:multimedium])
        format.html { redirect_to @multimedium, notice: 'Multimedium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @multimedium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /multimedia/1
  # DELETE /multimedia/1.json
  def destroy
    @multimedium = Multimedium.find(params[:id])
    @multimedium.destroy

    respond_to do |format|
      format.html { redirect_to multimedia_url }
      format.json { head :no_content }
    end
  end
end
