class HomeController < ApplicationController
    # def first
    #     @data=Best.all
    # end
    # def show 
    #     @data=Best.find(params[:id])# to access all data one by one
    #     #@data=Best.find(2) #to access particular value
    # end

    def first
        @data=Best.all
      end
    
      def show
        @data=Best.find(params[:id])
      end
    
      def new
        @data=Best.new
      end
    
      def update
        @data=Best.update
      end
    
      def create
        @data=Best.create(title:"....",body:"....")
        if @data.save
          redirect_to @data    
       else
        #render :new,status: : unprocessable_entity
       end
     end
  end
