class IamRootMFA << CheckRule
  @name = "Root Account MFA Enabled"

  def initialize(sources)
    data = sources[:IamAccountSummary]
    
  end

end
