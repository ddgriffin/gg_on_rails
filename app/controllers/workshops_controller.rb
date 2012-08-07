class WorkshopsController < ApplicationController
  def show
  end

  def new
  	@workshop = Workshop.new
  end

  def create
  	@workshop = Workshop.new(params[:workshop])

		respond_to do |format|
  		if @workshop.save
   		 format.html { redirect_to workshop_path(@workshop) }
   		 format.json { render :json => @workshop }
 			else
    		format.html { render :action => "new" }
  		 	format.json { render :json => @workshop.errors, :status => :unprocessable_entity }
 			end
		end  

 	end
  end