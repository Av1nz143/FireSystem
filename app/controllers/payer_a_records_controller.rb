class PayerARecordsController < ApplicationController
  before_action :set_payer_a_record, only: [:show, :edit, :update, :destroy]

  # GET /payer_a_records
  # GET /payer_a_records.json
  def index
    @payer_a_records = PayerARecord.all

    respond_to do |format|
      format.html
      format.csv { send_data @payer_a_records.to_csv, filename: "payer-a-record-#{Date.today}.csv" }
    end
  end

  # GET /payer_a_records/1
  # GET /payer_a_records/1.json
  def show
  end

  # GET /payer_a_records/new
  def new
    @payer_a_record = PayerARecord.new
  end

  # GET /payer_a_records/1/edit
  def edit
  end

  # POST /payer_a_records
  # POST /payer_a_records.json
  def create
    @payer_a_record = PayerARecord.new(payer_a_record_params)

    respond_to do |format|
      if @payer_a_record.save
        format.html { redirect_to @payer_a_record, notice: 'Payer a record was successfully created.' }
        format.json { render :show, status: :created, location: @payer_a_record }
      else
        format.html { render :new }
        format.json { render json: @payer_a_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payer_a_records/1
  # PATCH/PUT /payer_a_records/1.json
  def update
    respond_to do |format|
      if @payer_a_record.update(payer_a_record_params)
        format.html { redirect_to @payer_a_record, notice: 'Payer a record was successfully updated.' }
        format.json { render :show, status: :ok, location: @payer_a_record }
      else
        format.html { render :edit }
        format.json { render json: @payer_a_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payer_a_records/1
  # DELETE /payer_a_records/1.json
  def destroy
    @payer_a_record.destroy
    respond_to do |format|
      format.html { redirect_to payer_a_records_url, notice: 'Payer a record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payer_a_record
      @payer_a_record = PayerARecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payer_a_record_params
      params.require(:payer_a_record).permit(:record_type, :payment_year, :combined_federal_state_filing_program, :blank, :payers_tin, :payer_name_control, :last_filing_factor, :type_of_return, :amount_codes, :blank, :foreign_entity_indictor, :first_payer_name_line, :second_payer_name_line, :transfer_agent_indicator, :payers_shipping_address, :payer_city, :payer_state, :payer_zip_code, :payers_telephone_number_extension, :blank, :record_sequence_number, :blank, :blank_of_cr_lf)
    end
end
