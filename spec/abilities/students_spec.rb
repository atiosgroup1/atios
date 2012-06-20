require_relative '../spec_helper'

require "cancan/matchers"

describe Canard::Abilities, "for students" do

  before do
  @user = User.create(:roles => %w(student))
  end
  
  subject { Ability.new(@user) }
  
# Define your ability tests thus;
#
#  describe 'on Activity' do
#
#    before do
#      @activity = Factory.create(:activity)
#    end
#
#    it { should be_able_to( :index,    Activity  ) }
#    it { should be_able_to( :show,     @activity ) }
#    it { should be_able_to( :read,     @activity ) }
#    it { should be_able_to( :new,      @activity ) }
#    it { should be_able_to( :create,   @activity ) }
#    it { should be_able_to( :edit,     @activity ) }
#    it { should be_able_to( :update,   @activity ) }
#    it { should be_able_to( :destroy,  @activity ) }
#
#  end
#  # on Activity
  
end
  
