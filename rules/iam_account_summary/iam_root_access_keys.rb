class IamRootAccessKeys < CheckRule
  @name = "Root Access Keys Exist"

  def initialize(sources)
    data = sources[:IamAccountSummary]
    if data.summary_map["AccountAccessKeysPresent"] == 0
      pass_single "AccountAccessKeysPresent"
    else
      fail_single "AccountAccessKeysPresent"
    end
  end

end
