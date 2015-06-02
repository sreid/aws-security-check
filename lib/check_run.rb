class CheckRun

  def initialize
    @source_data = {}
    @run_results = []
  end

  def run
    puts "---> Running"
    fetch_all_data
    run_all_rules
    print_the_result
  end

  private def fetch_all_data
    puts "---> Fetching"
    CheckSource.descendants.each do |data_source|
      @source_data[data_source.name.to_sym] = data_source.fetch_data
    end
  end

  private def run_all_rules
    puts "---> Running Checks"
    CheckRule.descendants.each do |rule_class|
      rule = rule_class.new(@source_data)
      puts "Rule: " + rule.name
      @run_results << rule
    end
  end

  private def print_the_result
    puts "---> Results"
    pp @source_data
    pp @run_results

    @run_results.each do |rule|
      puts rule.name + " : " + rule.status_to_s
    end

  end

end
