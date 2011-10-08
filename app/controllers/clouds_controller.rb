class CloudsController < ApplicationController
  # GET /clouds
  # GET /clouds.json
  def index
    @clouds = Cloud.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clouds }
    end
  end

  # GET /clouds/1
  # GET /clouds/1.json
  def show
    @cloud = Cloud.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cloud }
    end
  end

  # GET /clouds/new
  # GET /clouds/new.json
  def new
    @cloud = Cloud.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cloud }
    end
  end

  # GET /clouds/1/edit
  def edit
    @cloud = Cloud.find(params[:id])
  end

  # POST /clouds
  # POST /clouds.json
  def create
    @cloud = Cloud.new(params[:cloud])

    respond_to do |format|
      if @cloud.save
        format.html { redirect_to @cloud, notice: 'Cloud was successfully created.' }
        format.json { render json: @cloud, status: :created, location: @cloud }
      else
        format.html { render action: "new" }
        format.json { render json: @cloud.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clouds/1
  # PUT /clouds/1.json
  def update
    @cloud = Cloud.find(params[:id])

    respond_to do |format|
      if @cloud.update_attributes(params[:cloud])
        format.html { redirect_to @cloud, notice: 'Cloud was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @cloud.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clouds/1
  # DELETE /clouds/1.json
  def destroy
    @cloud = Cloud.find(params[:id])
    @cloud.destroy

    respond_to do |format|
      format.html { redirect_to clouds_url }
      format.json { head :ok }
    end
  end
end
