# frozen_string_literal: true

feature 'user can like a comment' do
  scenario 'from another users homepage' do
    sign_up
    create_post
    click_link 'Home'
    create_post
    click_link 'Sign Out'
    sign_up_two
    click_link 'Home'
    click_link 'uvalente'
    create_comment
    click_on(class: 'comment-like')
    expect(page).to have_content('1 Like')
  end

  scenario 'from the homepage' do
    sign_up
    click_link 'Home'
    create_post
    create_comment
    click_on(class: 'comment-like')
    expect(page).to have_content('1 Like')
  end
end
