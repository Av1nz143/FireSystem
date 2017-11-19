class PayerCRecordsController < ApplicationController
  before_action :set_payer_c_record, only: [:show, :edit, :update, :destroy]

  # GET /payer_c_records
  # GET /payer_c_records.json
  def index
    @payer_c_records = PayerCRecord.all

    respond_to do |format|
      format.html
      format.csv { send_data @payer_c_records.to_csv, filename: "payer-c-record-#{Date.today}.csv" }
    end
  end

  # GET /payer_c_records/1
  # GET /payer_c_records/1.json
  def show
  end

  # GET /payer_c_records/new
  def new
    @payer_c_record = PayerCRecord.new
  end

  # GET /payer_c_records/1/edit
  def edit
  end

  # POST /payer_c_records
  # POST /payer_c_records.json
  def create
    @payer_c_record = PayerCRecord.new(payer_c_record_params)

    respond_to do |format|
      if @payer_c_record.save
        format.html { redirect_to @payer_c_record, notice: 'Payer c record was successfully created.' }
        format.json { render :show, status: :created, location: @payer_c_record }
      else
        format.html { render :new }
        format.json { render json: @payer_c_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payer_c_records/1
  # PATCH/PUT /payer_c_records/1.json
  def update
    respond_to do |format|
      if @payer_c_record.update(payer_c_record_params)
        format.html { redirect_to @payer_c_record, notice: 'Payer c record was successfully updated.' }
        format.json { render :show, status: :ok, location: @payer_c_record }
      else
        format.html { render :edit }
        format.json { render json: @payer_c_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payer_c_records/1
  # DELETE /payer_c_records/1.json
  def destroy
    @payer_c_record.destroy
    respond_to do |format|
      format.html { redirect_to payer_c_records_url, notice: 'Payer c record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payer_c_record
      @payer_c_record = PayerCRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payer_c_record_params
      params.require(:payer_c_record).permit(:record_type, :number_of_payees, :blank, :control_total_1, :control_total_2, :control_total_3, :control_total_4, :control_total_5, :control_total_6, :control_total_7, :control_total_8, :control_total_9, :control_total_a, :control_total_b, :control_total_c, :control_total_d, :control_total_e, :control_total_f, :control_total_g, :blank, :record_sequence_number, :blank, :blank_or_cr_lf)
    end
end
