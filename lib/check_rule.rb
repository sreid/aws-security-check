class CheckRule
  attr :results

  def initialize
    @results = []
  end

  def pass_single(resource_name)
    @results = [CheckResult.new(:pass, resource_name)]
  end

  def fail_single(resource_name, parameters = {})
    @results = [CheckResult.new(:fail, resource_name)]
  end

  def passed?
    @results.each do |res|
      return false if res.failed?
    end
    return true
  end

  def failed?
    !passed?
  end

  def status_to_s
    (passed?) ? "Passed" : "Fai"
  end

  def name
    self.class.name
  end

  # TODO this is probably not the most configurable way, but works for now
  # TODO DRY
  def self.descendants
    ObjectSpace.each_object(Class).select { |klass| klass < self }
  end

end
