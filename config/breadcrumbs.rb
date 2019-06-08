crumb :root do
  link "メルカリ", root_path
end

crumb :show do |product|
  link "#{product.name}"
  parent :root
end

crumb :mypage do
  link 'マイページ', profiles_path
end

crumb :profile do
  link 'プロフィール', profile_path
  parent :mypage
end

crumb :cards do
  link '支払い方法', cards_path
  parent :mypage
end

crumb :identifications do
  link '本人情報', identifications_path
  parent :mypage
end

crumb :sign_out do
  link 'ログアウト', sign_out_index_path
  parent :mypage
end
# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
