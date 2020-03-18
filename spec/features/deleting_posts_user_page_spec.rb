# frozen_string_literal: true

feature 'user can delete posts' do
  scenario 'from the user homepage' do
    sign_up
    create_post
    click_on(class: 'post-delete')
    expect(page).not_to have_content('test message')
  end

  scenario 'from the homepage, comments will also be destroyed' do
    sign_up
    create_post
    create_comment
    click_on(class: 'post-delete')
    expect(page).not_to have_content('test message')
    expect(page).not_to have_content('test comment')
  end

  scenario 'and they will delete from the timeline' do
    sign_up
    create_post
    click_on(class: 'post-delete')
    click_link 'Home'
    expect(page).not_to have_content('test message')
  end
end
