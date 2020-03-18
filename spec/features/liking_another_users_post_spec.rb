# frozen_string_literal: true

feature 'user can like a post' do
  scenario 'from another users homepage' do
    sign_up
    click_link 'Home'
    create_post
    click_on(class: 'post-like')
    click_link 'Sign Out'
    sign_up_two
    click_link 'Home'
    click_on(class: 'post-like')
    expect(page).to have_content('2 Likes')
    expect(page).to have_css('.post-unlike')
  end
end
