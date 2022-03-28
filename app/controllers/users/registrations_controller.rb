# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]


  # GET /resource/sign_up
  # def new
  #   super
  # end


  def new
    @roles = Role.where.not(name: ["Superuser", "Administrator", "Guest"])
    # Override Devise default behaviour and create a profile as well
    build_resource({})
    resource.build_profile
    resource.build_location
    respond_with self.resource


  end


  def create
    build_resource(sign_up_params)
    
    # Save
    resource.save
   

    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        set_flash_message! :notice, :signed_up
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      @roles = Role.where.not(name: ["Superuser", "Administrator", "Guest"])
      
      flash.now[:alert] = resource.errors.full_messages
      render :new and return


    end
   

    #@user = User.new(sign_up_params)
    
    #@user.build_profile(sign_up_params[:profile_attributes])
    #unless @user.valid?
      #flash.now[:alert] = @user.errors.full_messages
      #@roles = Role.where.not(name: ["Superuser", "Administrator", "Guest"])
      #render :new #and return
    #end
  end
  

  # POST /resource
  #def create
    
    #@roles = Role.where.not(name: ["Superuser", "Administrator", "Guest"])
    #profile_attributes = sign_up_params["profile_attributes"]
    #full_address = profile_attributes["full_address"]
    #puts "Full address: #{full_address}"

    
      #set_login
      #sign_up_params.merge!(login: "amos")
      #login = sign_up_params[:login]
     
     
      
   
   #end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
     devise_parameter_sanitizer.permit(:sign_up, keys: [:role_id, :login, profile_attributes: [ :sex, :birth_date ], location_attributes: [ :country, :city ]])

   end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  #def after_sign_up_path_for(resource)
     #super(resource)
     #feeds_path
   #end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

  def after_update_path_for(resource)
    feeds_path
  end

  def after_sign_in_path_for(resource)
   
        feeds_path
 

  end

  def sign_up_params
    devise_parameter_sanitizer.sanitize(:sign_up)
  end

  

  
end
