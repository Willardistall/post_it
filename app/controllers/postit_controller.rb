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
    @postit = Postit.new(postits_params)
      if @postit.save
        redirect_to postit_path
      else
        render :new
      end
  end

end

private

def postits_params 
  params.require(:posit).permit(:title, :author, :body)
end
