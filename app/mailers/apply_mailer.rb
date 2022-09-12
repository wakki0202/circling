class ApplyMailer < ApplicationMailer
def complete_apply(apply,current_user)
@apply = apply
@current_user = current_user
mail(
  from:'ytk.jagaimo@gmail.com',
  to: 'ytk0202@docomo.ne.jp',
  subject: 'テスト'
)

end
end