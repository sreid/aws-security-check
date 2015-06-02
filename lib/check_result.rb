class CheckResult
  attr :status, :resource_name, :extra

  def initialize(status, resource, extra = {})
    @status = status
    @resource_name = resource
    @extra = extra
  end

  def passed?
    @status == :pass
  end

  def failed?
    @status == :fail
  end

end
