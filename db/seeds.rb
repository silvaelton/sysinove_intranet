@account = ::Account.new({
  code: 254789,
  name: "homologacao",
  username: "homologacao",
  email: "homologacao@homologacao.com",
  subdomain: "homologacao",
  situation: 'ativo',
  password: "123456789",


})

@account.save!