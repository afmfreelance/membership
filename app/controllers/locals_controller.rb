class LocalsController < ApplicationController
  # GET /locals
  # GET /locals.xml
  def index
    
    @locals = Local.search params[:search], :sort_mode => :extended, :order => "sort_num ASC"

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @locals }
    end
  end

  # GET /locals/1
  # GET /locals/1.xml
  def show
    #if redirected from musician->local->memberships page - we showing the memberhsips
    if params[:musician_id] && params[:id]
      @memberships = Membership.find(:all, :include => [:category, :status, :local, :musician], :conditions => ['musician_id = ? and locals.number = ?', params[:musician_id], params[:id]])
      
      @musician = Musician.find(params[:musician_id])
      @local = Local.find(params[:id])
    else #normal locals view
       @local = Local.find(params[:id])
    end
    respond_to do |format|
      format.html # show.html.erb
      format.js # show.js.rjs??
      format.xml  { render :xml => @local }
    end
  end

  # GET /locals/new
  # GET /locals/new.xml
  def new
    @local = Local.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @local }
    end
  end

  # GET /locals/1/edit
  def edit
    @local = Local.find_by_number(params[:id])
  end

  # POST /locals
  # POST /locals.xml
  def create
    @local = Local.new(params[:local])

    respond_to do |format|
      if @local.save
        flash[:notice] = 'Local was successfully created.'
        format.html { redirect_to(edit_local_path(@local)) }
        format.xml  { render :xml => @local, :status => :created, :location => @local }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @local.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /locals/1
  # PUT /locals/1.xml
  def update
    @local = Local.find_by_number(params[:id])

    respond_to do |format|
      if @local.update_attributes(params[:local])
        flash[:notice] = 'Local was successfully updated.'
        format.html { redirect_to(edit_local_path(@local)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @local.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /locals/1
  # DELETE /locals/1.xml
  def destroy
    @local = Local.find_by_number(params[:id])
    @local.destroy

    respond_to do |format|
      format.html { redirect_to(locals_url) }
      format.xml  { head :ok }
    end
  end
end
