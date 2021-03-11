class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :update, :destroy]
  before_action :set_user

  # GET /transactions
  def index
    @transactions = @user.transactions.all

    render json: @transactions, except: [:updated_at]
  end

  # GET /transactions/1
  def show
    render json: @transaction.slice(:id, :amount, :description, :user_id, :transaction_type_id, :created_at)
  end

  # POST /transactions
  def create
    # byebug
    @transaction = @user.transactions.build(transaction_params)

    if @transaction.save
      render json: @transaction, status: :created
    else
      render json: @transaction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /transactions/1
  def update
    if @transaction.update(transaction_params)
      render json: @transaction
    else
      render json: @transaction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /transactions/1
  def destroy
    @transaction.destroy
    render json: @transaction
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    # Only allow a list of trusted parameters through.
    def transaction_params
      params.require(:transaction).permit(:amount, :description, :user_id, :transaction_type_id)
    end
end
