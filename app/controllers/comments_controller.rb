class CommentsController < ApplicationController
    def create
      @article = Article.find(params[:article_id])
      @comment = @article.comments.create(comment_params)
      redirect_to article_path(@article)
    end
  
  
      private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :status)
    end
    class Article < ApplicationRecord
      has_many :comments
    
      validates :title, presence: true
      validates :body, presence: true, length: { minimum: 10 }
    
      VALID_STATUSES = ['public', 'private', 'archived']
    
      validates :status, inclusion: { in: VALID_STATUSES }
    
      def archived?
        status == 'archived'
      end
    end
     




    
  end