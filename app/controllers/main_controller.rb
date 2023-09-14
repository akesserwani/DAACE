class MainController < ApplicationController


  def index
    @view_data = DataMain.all 


    #getting all data for map.js
    #params to get are title:, long:, lat:
    @map_data = {}

    @view_data.where(:status => "approved").each do |i|
      @map_data[i.id] = [i.title, i.long, i.lat]
    end

    puts @map_data

  end

  def view
    @data_id = DataMain.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to index_path
  end

  def new
    @data_main = DataMain.new
  end
  
  def create
    @data_main = DataMain.new(post_params)
    
    if @data_main.save
      redirect_to index_path
    else
      render :new, status: :unprocessable_entity 
    end
  end

  def edit
    if user_signed_in?
      @data_id = DataMain.find(params[:id])
    else
      redirect_to view_path
    end
  end

  def update
    @data_id = DataMain.find(params[:id])
    if @data_id.update(post_params)
      redirect_to view_path
    else
      render :data_main 
    end
  end

  def destroy
    @data_id = DataMain.find(params[:id])
    @data_id.destroy
    redirect_to index_path
  end

  
  private 

  def post_params
    params.require(:data_main).permit(:title, :location, :era, :long, :lat, :source, :status, :opt)
  end

end



#notes

#before_action :authenticate_user!, except: [:index, ]

#check if logged in
#if user_signed_in?

#if not 
#<% if !user_signed_in? %>

#logout
#destroy_user_session_path, method: :delete, this is for form submission

#login
#new_user_session_path

# <%= link_to ''.html_safe, index_path %>




