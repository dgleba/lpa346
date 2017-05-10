require 'rails_helper'

RSpec.describe "QuestionLists", type: :request do
  describe "GET /question_lists" do
    it "works! (now write some real specs)" do
      get question_lists_path
      expect(response).to have_http_status(200)
    end
  end
end
