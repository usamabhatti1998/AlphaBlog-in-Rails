class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end


  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new #for the first time when "new" page will run, there will be value in @article variable
  end



def create 
  @article = Article.new(params.require(:article).permit(:title, :description)) #by default, no ariale are allowed to be displayed in  a rails views unless we manually allow them and specify which values and fields are allwoed
  
  if   @article.save 
    flash[:notice] = "Article was created successfully."
  #save the object to database
    redirect_to @article

  else 
  render 'new'
  end

    #redirect_to article_path(@article) #tellils that at the end, load this view, will extract the ID from the one within brakcet and article path is beacuse of prefix name of route. 
end


def destroy

@article = Article.find(params[:id])
@article.destroy
redirect_to articles_path

end


def update
  @article = Article.find(params[:id])
  if @article.update(params.require(:article).permit(:title, :description))
    flash[:notice] = "Article was updated succesfully."
    redirect_to @article
  else
    render 'edit'
  end
end

def edit
  @article = Article.find(params[:id])
end


end #class
