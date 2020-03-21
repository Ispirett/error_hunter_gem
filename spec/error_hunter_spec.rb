RSpec.describe ErrorHunter do
  it "has a version number" do
    expect(ErrorHunter::VERSION).not_to be nil
  end

  context "Add error" do
    it "adds an error to you app database" do
    expect( ErrorHunter::App.add_error(title: "GemTest", description: "testing from get" , serverity: "urgent", app_name: "cardify" )
    ).to eq({"status"=>"created"})
    end
  end
end
