require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }
  it { expect(user).to respond_to(:email) }

  #context 'when name is blank' do
  #  before { user.name = ' '}

  #  it { expect(user).not_to be_valid }

  #end

  #context 'when name is nil' do
#    before { user.name = nil}

 #   it { expect(user).not_to be_valid }
    
  #end

  #it { is_expected.to validate_presence_of(:name)}
  it { is_expected.to validate_presence_of(:email)}
  it { is_expected.to validate_uniqueness_of(:email).case_insensitive}
  it { is_expected.to validate_confirmation_of(:password)}
  it { is_expected.to allow_value('jailton.michele@gmail.com').for(:email)}
  #it { is_expected.to validate_numericality_of(:age)}
  #subject  { @user = build(:user) }
  #before { @user = FactoryBot.build(:user) }
  

  #it { expect(@user).to respond_to(:email) }
  #it { expect(@user).to respond_to(:name) }
  #it { expect(@user).to respond_to(:password) }
  #it { expect(@user).to respond_to(:password_confirmation) }
  #it { expect(@user).to. be_valid }
  
  #it { expect(subject).to respond_to(:email)}
  #it { expect(subject).to. be_valid }

  #it { is_expected.to respond_to(:email)}
end
