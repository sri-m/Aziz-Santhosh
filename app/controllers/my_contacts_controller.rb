class MyContactsController < ApplicationController
  before_action :set_my_contact, only: [:show, :edit, :update, :destroy]
  #after_action :send_mails, only: [:create]
  def send_mails
    UserMailer.registration_confirmation(@my_contact).deliver
  end
  before_action :authenticate_user!, :only => [:edit, :update, :delete]

  # GET /my_contacts
  # GET /my_contacts.json
  def index
    @my_contacts = MyContact.paginate(:page => params[:page], :per_page => 5)
  end

  # GET /my_contacts/1
  # GET /my_contacts/1.json
  def show
  end

  # GET /my_contacts/new
  def new
    @my_contact = MyContact.new
  end

  # GET /my_contacts/1/edit
  def edit
  end

  # POST /my_contacts
  # POST /my_contacts.json
  def create
    @my_contact = MyContact.new(my_contact_params)

    respond_to do |format|
      if @my_contact.save
        
        format.html { redirect_to @my_contact, notice: 'My contact was successfully created.' }
        format.json { render :show, status: :created, location: @my_contact }
      else
        format.html { render :new }
        format.json { render json: @my_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_contacts/1
  # PATCH/PUT /my_contacts/1.json
  def update
    respond_to do |format|
      if @my_contact.update(my_contact_params)
        format.html { redirect_to @my_contact, notice: 'My contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_contact }
      else
        format.html { render :edit }
        format.json { render json: @my_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_contacts/1
  # DELETE /my_contacts/1.json
  def destroy
    @my_contact.delete
    respond_to do |format|
      format.html { redirect_to my_contacts_url, notice: 'My contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_contact
      @my_contact = MyContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_contact_params
      params.require(:my_contact).permit(:name, :email, :cell, :address)
    end
end
