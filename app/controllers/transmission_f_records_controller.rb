class TransmissionFRecordsController < ApplicationController
  before_action :set_transmission_f_record, only: [:show, :edit, :update, :destroy]

  # GET /transmission_f_records
  # GET /transmission_f_records.json
  def index
    @transmission_f_records = TransmissionFRecord.all

    respond_to do |format|
      format.html
      format.csv { send_data @transmission_f_records.to_csv, filename: "transmission-f-record-#{Date.today}.csv" }
    end
  end

  # GET /transmission_f_records/1
  # GET /transmission_f_records/1.json
  def show
  end

  # GET /transmission_f_records/new
  def new
    @transmission_f_record = TransmissionFRecord.new
  end

  # GET /transmission_f_records/1/edit
  def edit
  end

  # POST /transmission_f_records
  # POST /transmission_f_records.json
  def create
    @transmission_f_record = TransmissionFRecord.new(transmission_f_record_params)

    respond_to do |format|
      if @transmission_f_record.save
        format.html { redirect_to @transmission_f_record, notice: 'Transmission f record was successfully created.' }
        format.json { render :show, status: :created, location: @transmission_f_record }
      else
        format.html { render :new }
        format.json { render json: @transmission_f_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transmission_f_records/1
  # PATCH/PUT /transmission_f_records/1.json
  def update
    respond_to do |format|
      if @transmission_f_record.update(transmission_f_record_params)
        format.html { redirect_to @transmission_f_record, notice: 'Transmission f record was successfully updated.' }
        format.json { render :show, status: :ok, location: @transmission_f_record }
      else
        format.html { render :edit }
        format.json { render json: @transmission_f_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transmission_f_records/1
  # DELETE /transmission_f_records/1.json
  def destroy
    @transmission_f_record.destroy
    respond_to do |format|
      format.html { redirect_to transmission_f_records_url, notice: 'Transmission f record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transmission_f_record
      @transmission_f_record = TransmissionFRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transmission_f_record_params
      params.require(:transmission_f_record).permit(:record_type, :number_of_a_records, :zero, :blank)
    end
end
