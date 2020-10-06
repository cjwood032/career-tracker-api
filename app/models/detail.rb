class Detail < ApplicationRecord
    def establish_session
        session = GoogleDrive::Session.from_config("config.json")
        spreadsheet_id = ENV["SHEET_ID"]
        @sheets = session.spreadsheet_by_key(spreadsheet_id).worksheets
    end
    def get_activity
        self.establish_session
        active=@sheets[2].rows
        binding.pry
        active = active.drop(1)
        #active.each {|row| create_detail(row)}
        return active
    end
    def create_detail(a)
        if a[0] == "" || a[0] == " " || a[0] == nil  
            update=Time.now.strftime("%m/%d/%Y")
        else
            update=a[0]
        end
        if a[3] == "" || a[3] == " " || a[3] == nil  
            contacted=Time.now.strftime("%m/%d/%Y")
        else
            contacted=a[3]
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
        "status" => a[13],
        "imported" => true
        })
        @detail.save
    end

    def export_data
        self.establish_session
        active=@sheets[2]
        details=Detail.all
        details= details.keep_if {|deet| deet.imported != true}
        details.each do |d|
            row = active.length
            active[row, 0] = d.update_date #iterate over the values
            active[row, 1] = d.company
            active[row, 2] = d.contact_name
            active[row, 3] = d.contact.date
            active[row, 4] = d.action
            active[row, 5] = d.method
            active[row, 6] = d.first_contact
            active[row, 7] = d.referral
            active[row, 8] = d.job_title
            active[row, 9] = d.job_link
            active[row, 10] = d.notes
            active[row, 11] = d.step
            active[row, 12] = d.complete
            active[row, 13] = d.status
        end

        active.save
    end 

end
# TimeStamp, Company, Contact Name and Title, Date, Action, Method Contacted, First time, Source/referral, Job Title, Link, Notes, Next Step, Complete, Status

