# frozen_string_literal: true

class PansController < ApplicationController
  # http_basic_authenticate_with name: 'Viitasaari', password: 'Nelostie', except: %i[index show]

  def index
    @pans = Pan.all
  end

  def show
    @pan = Pan.find(params[:id])
  end

  def new
    @pan = Pan.new
  end

  def edit
    @pan = Pan.find(params[:id])
  end

  def create
    @pan = Pan.new(pan_params)

    if @pan.save
      redirect_to pans_path
    else
      render 'new'
    end
  end

  def update
    @pan = Pan.find(params[:id])

    if @pan.update(pan_params)
      redirect_to pans_path
    else
      render 'editoi'
    end
  end

  def destroy
    @pan = Pan.find(params[:id])
    @pan.destroy

    redirect_to pans_path
    end

  private

  def pan_params
    params.require(:pan).permit(:title, :text)
  end
end
