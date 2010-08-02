class MusiciansController < ApplicationController
  # GET /musicians
  # GET /musicians.xml
  def index
    @musicians = Musician.paginate :page => params[:page], :order => 'created_at DESC'
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @musicians }
    end
  end

  # GET /musicians/1
  # GET /musicians/1.xml
  def show
    @musician = Musician.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @musician }
    end
  end

  # GET /musicians/new
  # GET /musicians/new.xml
  def new
    @musician = Musician.new(:primary_phone_choice => 0)
    3.times { @musician.musician_instruments.build }
    @musician.memberships.build
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @musician }
    end
  end

  # GET /musicians/1/edit
  def edit
    @musician = Musician.find(params[:id])
  end

  # POST /musicians
  # POST /musicians.xml
  def create
    @musician = Musician.new(params[:musician])

    respond_to do |format|
      if @musician.save
        flash[:notice] = 'Musician was successfully created.'
        format.html { redirect_to(@musician) }
        format.xml  { render :xml => @musician, :status => :created, :location => @musician }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @musician.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /musicians/1
  # PUT /musicians/1.xml
  def update
    @musician = Musician.find(params[:id])

    respond_to do |format|
      if @musician.update_attributes(params[:musician])
        flash[:notice] = 'Musician was successfully updated.'
        format.html { redirect_to(@musician) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @musician.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /musicians/1
  # DELETE /musicians/1.xml
  def destroy
    @musician = Musician.find(params[:id])
    @musician.destroy

    respond_to do |format|
      format.html { redirect_to(musicians_url) }
      format.xml  { head :ok }
    end
  end
end
