class CakesController < ApplicationController
  
  before_filter :tags
  
  # GET /cakes
  # GET /cakes.xml
  def index
    @cakes = Cake.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cakes }
    end
  end

  # GET /cakes/1
  # GET /cakes/1.xml
  def show
    @cake = Cake.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cake }
    end
  end

  # GET /cakes/new
  # GET /cakes/new.xml
  def new
    @cake = Cake.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cake }
    end
  end

  # GET /cakes/1/edit
  def edit
    @cake = Cake.find(params[:id])
  end

  # POST /cakes
  # POST /cakes.xml
  def create
    @cake = Cake.new(params[:cake])

    respond_to do |format|
      if @cake.save
        flash[:notice] = 'Cake was successfully created.'
        format.html { redirect_to(@cake) }
        format.xml  { render :xml => @cake, :status => :created, :location => @cake }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cake.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cakes/1
  # PUT /cakes/1.xml
  def update
    @cake = Cake.find(params[:id])

    respond_to do |format|
      if @cake.update_attributes(params[:cake])
        flash[:notice] = 'Cake was successfully updated.'
        format.html { redirect_to(@cake) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cake.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cakes/1
  # DELETE /cakes/1.xml
  def destroy
    @cake = Cake.find(params[:id])
    @cake.destroy

    respond_to do |format|
      format.html { redirect_to(cakes_url) }
      format.xml  { head :ok }
    end
  end
  
  private
  
  def tags
    @cake_tags = Cake.tag_counts
  end
end
