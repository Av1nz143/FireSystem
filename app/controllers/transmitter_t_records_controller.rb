class TransmitterTRecordsController < ApplicationController
  before_action :set_transmitter_t_record, only: [:show, :edit, :update, :destroy]

  # GET /transmitter_t_records
  # GET /transmitter_t_records.json
  def index
    @transmitter_t_records = TransmitterTRecord.all

    respond_to do |format|
      format.html
      format.csv { send_data@transmitter_t_records.to_csv, filename: "transmitter-t-record-#{Date.today}.csv" }
    end
  end

  # GET /transmitter_t_records/1
  # GET /transmitter_t_records/1.json
  def show
  end

  # GET /transmitter_t_records/new
  def new
    @transmitter_t_record = TransmitterTRecord.new
  end

  # GET /transmitter_t_records/1/edit
  def edit
  end

  # POST /transmitter_t_records
  # POST /transmitter_t_records.json
  def create
    @transmitter_t_record = TransmitterTRecord.new(transmitter_t_record_params)

    respond_to do |format|
      if @transmitter_t_record.save
        format.html { redirect_to @transmitter_t_record, notice: 'Transmitter t record was successfully created.' }
        format.json { render :show, status: :created, location: @transmitter_t_record }
      else
        format.html { render :new }
        format.json { render json: @transmitter_t_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transmitter_t_records/1
  # PATCH/PUT /transmitter_t_records/1.json
  def update
    respond_to do |format|
      if @transmitter_t_record.update(transmitter_t_record_params)
        format.html { redirect_to @transmitter_t_record, notice: 'Transmitter t record was successfully updated.' }
        format.json { render :show, status: :ok, location: @transmitter_t_record }
      else
        format.html { render :edit }
        format.json { render json: @transmitter_t_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transmitter_t_records/1
  # DELETE /transmitter_t_records/1.json
  def destroy
    @transmitter_t_record.destroy
    respond_to do |format|
      format.html { redirect_to transmitter_t_records_url, notice: 'Transmitter t record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transmitter_t_record
      @transmitter_t_record = TransmitterTRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transmitter_t_record_params
      params.require(:transmitter_t_record).permit(:record_type, :payment_year, :prior_year_data_indicator, :transmitters_tin, :tranmitter_control_code, :blank, :test_file_indicator, :foreign_entity_indicator, :transmitter_name, :companyname, :company_mailing_address, :comapny_city, :company_state, :company_zip_code, :blank, :total_no_of_payees, :contact_name, :contact_telephone_number_and_etension, :contact_email_address, :blank, :record_sequence_number, :blank, :vendor_indicator, :vendor_name, :vendor_mailing, :address, :vendor_city, :vendor_state, :vendor_zip_code, :vendor_contact_name, :vendor_contact_telephone_number_extension, :blank_integer_vendor_foreign_entity_indicator, :blank, :blank)
    end
end
