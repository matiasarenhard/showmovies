user = User.create(name: 'simple urser', email: 'user@example.com', password: '123456', password_confirmation: '123456')
Movie.create(name: 'my movie', url: 'https://content.jwplatform.com/manifests/yp34SRmf.m3u8', user_id: user.id, public: false)
Movie.create(name: 'public movie', url: 'https://content.jwplatform.com/manifests/yp34SRmf.m3u8', user_id: user.id, public: true)

p ' -> Email: user@example.com'
p ' -> Password: 123456'
p '--------------------'
p 'Finish !!'
p 'Matias Arenhard'

