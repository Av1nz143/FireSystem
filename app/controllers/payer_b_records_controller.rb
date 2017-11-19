class PayerBRecordsController < ApplicationController
  before_action :set_payer_b_record, only: [:show, :edit, :update, :destroy]

  # GET /payer_b_records
  # GET /payer_b_records.json
  def index
    @payer_b_records = PayerBRecord.all

    respond_to do |format|
      format.html
      format.csv { send_data @payer_b_records.to_csv, filename: "payer-b-record-#{Date.today}.csv" }
    end
  end

  # GET /payer_b_records/1
  # GET /payer_b_records/1.json
  def show
  end

  # GET /payer_b_records/new
  def new
    @payer_b_record = PayerBRecord.new
  end

  # GET /payer_b_records/1/edit
  def edit
  end

  # POST /payer_b_records
  # POST /payer_b_records.json
  def create
    @payer_b_record = PayerBRecord.new(payer_b_record_params)

    respond_to do |format|
      if @payer_b_record.save
        format.html { redirect_to @payer_b_record, notice: 'Payer b record was successfully created.' }
        format.json { render :show, status: :created, location: @payer_b_record }
      else
        format.html { render :new }
        format.json { render json: @payer_b_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payer_b_records/1
  # PATCH/PUT /payer_b_records/1.json
  def update
    respond_to do |format|
      if @payer_b_record.update(payer_b_record_params)
        format.html { redirect_to @payer_b_record, notice: 'Payer b record was successfully updated.' }
        format.json { render :show, status: :ok, location: @payer_b_record }
      else
        format.html { render :edit }
        format.json { render json: @payer_b_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payer_b_records/1
  # DELETE /payer_b_records/1.json
  def destroy
    @payer_b_record.destroy
    respond_to do |format|
      format.html { redirect_to payer_b_records_url, notice: 'Payer b record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payer_b_record
      @payer_b_record = PayerBRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payer_b_record_params
      params.require(:payer_b_record).permit(:record_type, :payment_year, :corrected_return_indicator, :name_control, :type_of_tin, :payee_tin, :payer_account_number_for_payee, :payers_office_code, :blank, :payment_amount_1, :payment_amount_2, :payment_amount_3, :payment_amount_4, :payment_amount_5, :payment_amount_6, :payment_amount_7, :payment_amount_8, :payment_amount_9, :payment_amount_a, :payment_amount_b, :payment_amount_c, :payment_amount_d, :payment_amount_e, :payment_amount_f, :payment_amount_g, :foreign_country_indicator, :first_payee_name_line, :second_payee_name_line, :blank, :payee_mailing_address, :blank, :payee_city, :payee_state, :Payee_zip_code, :blank, :record_sequence_number, :blank)
    end
end
