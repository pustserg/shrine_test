require_relative '../../../spec_helper'

describe Web::Views::Posts::New do
  let(:exposures) { Hash[format: :html] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/posts/new.html.slim') }
  let(:view)      { Web::Views::Posts::New.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #format' do
    view.format.must_equal exposures.fetch(:format)
  end
end
