class MonstersController < ApplicationController
  before_action :set_monster, except: [:new, :index, :create]

  def index
    @monsters = Monster.all
  end

  def new
    @monster = Monster.new
  end

  def create
    Monster.create(monster_params)
    redirect_to action: 'index'
  end

  def edit
  end

  def update
    @monster.update(monster_params)
    redirect_to action: 'index'
  end

  private

  def set_monster
    @monster = Monster.find(params[:id])
  end

  def monster_params
    params.require(:monster).permit(:name, :cp, :monster_type, :weight, :height)
  end
end
