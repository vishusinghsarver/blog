class StudentController < ApplicationController
  def first
    @best=Best.all
  end

  def show
    @best=Best.find(params[:id])
  end

  def new
    @best=Best.new
  end

  def update
    @best=Best.update
  end

  def create
    @bests=Best.create(title:"....",body:"....")
    if @best.save
      redirect_to @bests    
   else
    render :new,status :: unprocessable_entity
   end
  end
end
