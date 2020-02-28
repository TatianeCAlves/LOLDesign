class CashesController < ApplicationController
  def index
    @cashes = Cash.all
  end

  def new
    @cash = Cash.new
  end

  def create
    @cashes = Cash.new(cash_params)

    @cashes = Cash.new(cash_params)

    if @cashes.save
      redirect_to cashes_path, notice: 'Criado com sucesso'
    else
      render action: :new
    end
  end

  def edit
    
  end

  def update

    if @cash.update_attributes(cash_params)
      
      redirect_to cashes_path, notice: 'Atualizado com sucesso'
      else
        render action: :edit      
    end    
  end

  def show
  end

  def destroy
    @cash.destroy

    redirect_to cashes_path, notice: 'Removido com sucesso'
end

before_action :load_cash, except: [:index,:new, :create]
def load_cash
  @cash = Cash.find(params[:id])
end

def cash_params
  params
  .require(:cash)
    .permit(
      :requests,
      :deliveries,
      :input,
      :exits,
      :profit,
    )
end
end