class IamRootMFA < CheckRule
  @name = "Root Account MFA Enabled"

  def initialize(sources)
    data = sources[:IamAccountSummary]
    if data.summary_map["AccountMFAEnabled"] == 1
      pass_single "AccountMFAEnabled"
    else
      fail_single "AccountMFAEnabled"
    end
  end

end
