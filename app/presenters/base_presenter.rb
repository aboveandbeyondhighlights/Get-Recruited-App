class BasePresenter < SimpleDelegator
  attr :model

  def initialize(model, view)
    @model, @view = model, view
    super(@model)
  end

  def view
    @view
  end

  def model=(new_model)
    @model = new_model
    __setobj__(new_model)
  end
end
