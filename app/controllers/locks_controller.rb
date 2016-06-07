class LocksController < ActionController::Base
	before_action :authenticate_user!
	def index
		@lock = Lock.all 
	end

	def show
		@lock = Lock.find_by_id(params[:id])
	end

	def new
		@lock = Lock.new
	end

	def create
		@lock = Lock.create(lock_params)
		if @lock.save
			flash[:notice] = "Account was  Successfully saved"
			redirect_to locks_path
		else
			flash.now[:error] = "Something went wrong! Please try again!"
			render :new
		end
	end

	def update
		@lock = Lock.find_by_id(params[:id])
		if @lock.update(lock_params)
			flash[:notice] = "Account was Successfully updated"
			redirect_to locks_path
		else
			flash.now[:error] = "There was  a problem updating this  account"
			render :edit
		end
	end

	def edit
		@lock = Lock.find_by_id(params[:id])
	end

	def destroy
		@lock = Lock.find_by_id(params[:id])
		@lock.delete
		redirect_to locks_path
	end

	private

	def lock_params
		params.require(:lock).permit(:name, :website, :username, :password, :additional_info, :email_linked_with_this_account, :kind_id)
    end
end