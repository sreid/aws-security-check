class CheckResult
  attr :status, :resource_name, :extra

  def initialize(status, resource, extra = {})
    @status = status
    @resource_name = resource
    @extra = extra
  end

end
