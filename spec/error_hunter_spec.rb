RSpec.describe ErrorHunter do
  it "has a version number" do
    expect(ErrorHunter::VERSION).not_to be nil
  end

  context "App" do
    it "adds an error to your app database" do
      ErrorHunter::App.config(app_name: 'namfix',token: ' ZQ6W66jJj3huSDqHMbPnhj3G')
    expect( ErrorHunter::App.add_error(title: "GemTest", description: "testing from get" , severity: "urgent", app_name: "namfix" )
    ).to eq({"status"=>"created"})
    end
    # it "checks if configs are organized set" do
    #   expect(ErrorHunter::App.config(token: "12121",app_name: 'testing')).to eq({token: "12121",app_name: 'testing'})
    # end
  end
end

# for testing in console, run ruby bin/console
# ErrorHunter::App.config(app_name: "cardify", token: 'NhJ2Ajb5YvXMNqDvyb1YxNpU')

#ErrorHunter::App.add_error(title: "GemTest", description: "testing from get" , severity: "urgent", log: 'from error_Hunter gem')
