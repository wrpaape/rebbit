class SubrebbitsController < ApplicationController
  def new
    @subrebbit = Subrebbit.new
  end

  def create
    subrebbit = Subrebbit.new(subrebbit_params)
    if Subrebbit.save
      #session[:subrebbit_id] = Subrebbit.id
      redirect_to root_path, notice: 'Subrebbit created!'
    else
      flash[:alert] = 'Errors Occured.'
      render :new
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
    params.require(:subrebbit).permit(:category)
  end
end
