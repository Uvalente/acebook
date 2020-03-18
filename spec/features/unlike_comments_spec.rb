# frozen_string_literal: true

feature 'user can like a post (and unlike a post once liked)' do
  scenario 'from the timeline' do
    sign_up
    click_link 'Home'
    create_post
    click_on(class: 'post-like')
    click_on(class: 'post-unlike')
    expect(page).to have_content('0 Likes')
    expect(page).to have_css('.post-like')
  end

  scenario 'from the user homepage' do
    sign_up
    create_post
    click_on(class: 'post-like')
    click_on(class: 'post-unlike')
    expect(page).to have_content('0 Likes')
    expect(page).to have_css('.post-like')
  end
end
