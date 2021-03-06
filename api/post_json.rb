module Acme
  class PostJson < Grape::API
    format :json
    desc 'Creates a spline that can be reticulated.'
    resource :spline do
      params do
        optional :reticulated, type: String, default: true
      end
      post do
        { reticulated: params[:reticulated] }
      end
    end
  end
end
