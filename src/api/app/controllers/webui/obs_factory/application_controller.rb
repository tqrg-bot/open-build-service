module Webui::ObsFactory
  class ApplicationController < ::Webui::WebuiController
    layout 'webui/obs_factory/application'

    rescue_from ::ObsFactory::OpenqaApi::OpenqaFailure do
      render text: "failure in openQA"
    end
  end
end
