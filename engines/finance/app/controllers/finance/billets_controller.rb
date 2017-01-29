require_dependency 'finance/application_controller'

module Finance
  class BilletsController < ApplicationController 
    before_action :set_billet, only: [:show]

    def index
      @billets = current_account.billets
    end
    
    def new
      @billet  = current_account.billets.new
    end

    def create
      @billet  = current_account.billets.new(set_params)
      
      if @billet.save
        flash[:success] = t :success
        redirect_to action: :index
      else
        render action: :new
      end

    end

    def edit
    end

    def update
      
      if @billet.update(set_params)
        flash[:success] = t :success
        redirect_to action: :index
      else
        render action: :edit
      end

    end


    def show

      @generate_billet = Brcobranca::Boleto::BancoBrasil.new
      @generate_billet.cedente = "Sysinove"
      @generate_billet.documento_cedente = "00480533000118"
      @generate_billet.sacado = @billet.name
      @generate_billet.sacado_documento = @billet.cpf || @billet.cnpj || "000000000000"
      @generate_billet.avalista = "Sysinove"
      @generate_billet.avalista_documento = "00480533000118"
      @generate_billet.valor = @billet.value
      @generate_billet.agencia        = "3475"
      @generate_billet.conta_corrente = "15933"
      @generate_billet.carteira       = "17"
        
        # BB
        # O que diferencia um tipo de boleto de outro, dentro do Banco do Brasil é a quantidade de dígitos do convênio.
      @generate_billet.convenio = "2945690"

      @generate_billet.numero_documento = @billet.id
      @generate_billet.data_vencimento = @billet.due.strftime("%Y-%m-%d").to_date
      @generate_billet.data_documento = Date.today.strftime("%Y-%m-%d").to_date
      @generate_billet.instrucao1 = "Pagável na rede bancária até a data de vencimento."
      @generate_billet.instrucao4 = "NÃO RECEBER APÓS data"
      @generate_billet.sacado_endereco = ""

      headers['Content-Type'] = 'application/pdf'
      send_data @generate_billet.to('pdf'), :filename => "boleto.pdf"
    end

    private

    def set_params
      params.require(:billet).permit(:name, :description, :due, 
                                     :value, :paid, :paid_date, :hash_return)
    end

    def set_billet
      @billet = current_account.billets.find(params[:id])
    end
    
  end
end