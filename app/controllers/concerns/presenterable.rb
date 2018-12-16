module Presenterable
  extend ActiveSupport::Concern

  included do
    helper_method :presenter
    before_action :presenter
  end

  def presenter
    @presenter ||= presenter_for(params[:action])
    @presenter ||= presenter_for(:form) if form_action?
    @presenter ||= fallback_presenter
  end

  private

  def form_action?
    %i(new create edit update).include? params[:action].to_sym
  end

  def fallback_presenter
    presenter_klass_for "#{presenter_klass_namespace}Presenter"
  end

  def presenter_for(action)
    presenter_klass_for "#{presenter_klass_namespace}::#{action.to_s.camelize(:upper)}Presenter"
  end

  def presenter_klass_for(klass_name)
    klass_name.constantize.try(:new, presenter_object, view_context)
  rescue NameError
    nil
  end

  def presenter_object
    instance_variable_get("@#{self.class.resource_name}")
  end

  def presenter_klass_namespace
    self.class.name.gsub(/Controller$/, '')
  end
end
