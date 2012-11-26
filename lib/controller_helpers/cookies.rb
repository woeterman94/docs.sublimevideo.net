module ControllerHelpers
  module Cookies

    private

    def set_stage_cookie
      cookies[:stage] ||= 'beta'
      if params[:new_stage]
        cookies[:stage] = params[:new_stage]
        redirect_to root_path(stage: params[:new_stage]) and return
      end
    end

  end
end
