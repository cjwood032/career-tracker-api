class Career < ApplicationRecord
    def establish_session
        session = GoogleDrive::Session.from_config("config.json")
        spreadsheet_id = ENV["SHEET_ID"]
        @sheets = session.spreadsheet_by_key(spreadsheet_id).worksheets
    end
    def get_activity
        self.establish_session
        active=@sheets[2].rows
        active.drop(1)
        return active
        #active.rows.each do |row|
        #    print(row)
        #end
        #binding.pry
    end
end