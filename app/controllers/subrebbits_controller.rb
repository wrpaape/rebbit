class SubrebbitsController < ApplicationController
  def new
    @subrebbit = Subrebbit.new
  end

  def create
    if Subrebbit.find_by(category: params[:category])
      flash[:alert] = 'already exists'
      render :new
    else
      subrebbit = Subrebbit.create(subrebbit_params)
      if subrebbit.save
        #session[:subrebbit_id] = Subrebbit.id
        redirect_to root_path, notice: 'subrebbit created!'
      else
        flash[:alert] = 'errors occured.'
        render :new
      end
    end
  end

  def show
    @subrebbit = Subrebbit.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def subrebbit_params
    params.permit(:category)
  end
end
