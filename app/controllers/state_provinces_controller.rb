class StateProvincesController < ApplicationController
  # GET /state_provinces
  # GET /state_provinces.xml
  def index
    @state_provinces = StateProvince.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @state_provinces }
    end
  end

  # GET /state_provinces/1
  # GET /state_provinces/1.xml
  def show
    @state_province = StateProvince.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @state_province }
    end
  end

  # GET /state_provinces/new
  # GET /state_provinces/new.xml
  def new
    @state_province = StateProvince.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @state_province }
    end
  end

  # GET /state_provinces/1/edit
  def edit
    @state_province = StateProvince.find(params[:id])
  end

  # POST /state_provinces
  # POST /state_provinces.xml
  def create
    @state_province = StateProvince.new(params[:state_province])

    respond_to do |format|
      if @state_province.save
        flash[:notice] = 'StateProvince was successfully created.'
        format.html { redirect_to(@state_province) }
        format.xml  { render :xml => @state_province, :status => :created, :location => @state_province }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @state_province.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /state_provinces/1
  # PUT /state_provinces/1.xml
  def update
    @state_province = StateProvince.find(params[:id])

    respond_to do |format|
      if @state_province.update_attributes(params[:state_province])
        flash[:notice] = 'StateProvince was successfully updated.'
        format.html { redirect_to(@state_province) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @state_province.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /state_provinces/1
  # DELETE /state_provinces/1.xml
  def destroy
    @state_province = StateProvince.find(params[:id])
    @state_province.destroy

    respond_to do |format|
      format.html { redirect_to(state_provinces_url) }
      format.xml  { head :ok }
    end
  end
end
