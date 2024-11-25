class ContactsDbsController < ApplicationController
  before_action :set_contacts_db, only: %i[ show edit update destroy ]

  # GET /contacts_dbs or /contacts_dbs.json
  def index
    @contacts_dbs = ContactsDb.all
  end

  # GET /contacts_dbs/1 or /contacts_dbs/1.json
  def show
  end

  # GET /contacts_dbs/new
  def new
    @contacts_db = ContactsDb.new
  end

  # GET /contacts_dbs/1/edit
  def edit
  end

  # POST /contacts_dbs or /contacts_dbs.json
  def create
    @contacts_db = ContactsDb.new(contacts_db_params)

    respond_to do |format|
      if @contacts_db.save
        format.html { redirect_to @contacts_db, notice: "Contacts db was successfully created." }
        format.json { render :show, status: :created, location: @contacts_db }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contacts_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts_dbs/1 or /contacts_dbs/1.json
  def update
    respond_to do |format|
      if @contacts_db.update(contacts_db_params)
        format.html { redirect_to @contacts_db, notice: "Contacts db was successfully updated." }
        format.json { render :show, status: :ok, location: @contacts_db }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contacts_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts_dbs/1 or /contacts_dbs/1.json
  def destroy
    @contacts_db.destroy!

    respond_to do |format|
      format.html { redirect_to contacts_dbs_path, status: :see_other, notice: "Contacts db was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contacts_db
      @contacts_db = ContactsDb.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def contacts_db_params
      params.expect(contacts_db: [ :name, :email, :phone, :linkedin ])
    end
end
