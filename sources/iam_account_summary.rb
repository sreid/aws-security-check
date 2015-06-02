class IamAccountSummary << CheckSource

  def fetch_data
    iam = Aws::IAM::Client.new
    iam.get_account_summary
  end

end
