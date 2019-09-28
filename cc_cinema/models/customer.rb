def save()
  db = PG.connect({ dbname: 'cc_cinema', host: 'localhost'})
  sql = "INSERT INTO customers(
  name, funds
)
VALUES(
  {@first_name},
  {@funds}
  )"
  db.exec(sql)
  db.close()
end
