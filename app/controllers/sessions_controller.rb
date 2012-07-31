class SessionsController < ApplicationController
  def show
  end

  def new
  	@session = Session.new
  end

  def create
  	@session = Session.new(params[:session])

		respond_to do |format|
  		if @session.save
   		 format.html { render :action => "create" }
   		 format.json { render :json => @session }
 			else
    		 format.html { render :action => "new" }
  		 format.json { render :json => @session.errors, :status => :unprocessable_entity }
 			end
		end  
 	end
  end
