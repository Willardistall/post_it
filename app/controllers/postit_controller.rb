class PostItController < ApplicationController
  def index
    @postits = PostIt.all
  end


  def show
    @postit = PostIt.find(params[:id])
  end

  def new
    @postit = PostIt.new
  end

  def create 
    @postit = PostIt.new(postits_params)
      if @postit.save
        redirect_to postit_path
      else
        render :new
      end
  end

  def edit
    @postit = PostIt.find(params[:id])
    if @postit.update(postits_params)
      redirect_to postit_path
    else
      render :edit
    end
  def destroy
      PostIt.find(params[:id]).destroy
      redirect_to postit_path
  end
    
end

private

def postits_params 
  params.require(:posit).permit(:title, :author, :body)
end
