class Detail < ApplicationRecord
    def establish_session
        session = GoogleDrive::Session.from_config("config.json")
        spreadsheet_id = ENV["SHEET_ID"]
        @sheets = session.spreadsheet_by_key(spreadsheet_id).worksheets
    end
    def get_activity
        self.establish_session
        active=@sheets[2].rows
        active = active.drop(1)
        active.each {|row| create_detail(row)}
        return active
    end
    def create_detail(a)
        if a[0] == "" || a[0] == " " || a[0] == nil  
            update=Time.now.strftime("%m/%d/%Y")
        else
            update=Date.strptime(a[0], "%m/%d/%Y")
        end
        if a[3] == "" || a[3] == " " || a[3] == nil  
            contacted=Time.now.strftime("%m/%d/%Y")
        else
            contacted=Date.strptime(a[3], "%m/%d/%Y")
        end
        @detail=Detail.new({
        "update_date" => update,
        "company" => a[1],
        "contact_name" => a[2],
        "contact_title" => "",
        "contact_date" => contacted,
        "action" => a[4],
        "method" => a[5],
        "first_contact" => a[6],
        "referral" => a[7],
        "job_title" => a[8],
        "job_link" => a[9],
        "notes" => a[10],
        "step" => a[11],
        "complete" => a[12],
        "status" => a[13]
        })
        @detail.save
    end
end
# TimeStamp, Company, Contact Name and Title, Date, Action, Method Contacted, First time, Source/referral, Job Title, Link, Notes, Next Step, Complete, Status

