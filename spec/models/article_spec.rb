require 'rails_helper'

RSpec.describe Article, type: :model do
  it "tests article object" do
    # article = Article.create({title: 'Simple Article', content: 'Sample Content'})
    article = create(:article) # == FactoryBot.create (Because we configured factory bot in rails_helper.rb)
    expect(article.title).to eq('Sample article')
  end
end
