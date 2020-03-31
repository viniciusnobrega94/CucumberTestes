Dado("que eu tenho umas laranjas") do |table|       #usamos table rows.hash
    puts @laranja = table.rows_hash['laranja'].to_i #com linhas pra pegar 
                                                    #a coluna que queremos
  end
  
  Quando("eu corto {int} laranjas") do |valor1|
    @cortar = valor1
    @total = @laranja - @cortar
  end
  
  Então("eu verifico quantas laranjas sobraram inteiras") do
    expect(@total).to eq 8
  end
  
  Dado("que tenho umas laranjas") do |table|
    table.hashes.each do |valor| #quando é coluna usamos hashes
        @laranja = valor['laranja'].to_i
    end
  end
  
  Quando("eu chupo {int} laranjas") do |valor2|
    @chupar = valor2
    @resultado = @laranja - @chupar
  end
  
  Então("eu verifico quantas laranjas sobraram") do
    expect(@resultado).to eq 8
  end