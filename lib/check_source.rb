class CheckSource
  @area_data = nil
  @area_results = []

  def fetch_data
    raise "Not Implemented"
  end

  # TODO this is probably not the most configurable way, but works for now
  # TODO DRY
  def self.descendants
    ObjectSpace.each_object(Class).select { |klass| klass < self }
  end

end
