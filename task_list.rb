def menu()
  puts "Escolha uma opção no menu: \n"
  puts '[1] Inserir uma tarefa'
  puts '[2] Ver todas as tarefas'
  puts '[3] Procura'
  puts '[4] Status'
  puts '[5] Clear'
  puts '[6] Sair'
  puts
  print 'Opção escolhida: '
  gets.to_i
end

puts "Bem-vindo ao Task List!"
opcao = menu()
elementos_encontrados = []
tarefas = []
while opcao != 6 do
  if opcao == 1
    print 'Digite sua tarefa: '
    nome = gets
    tarefa = {"#{nome}" => false}
    tarefas << tarefa
    puts
    puts "Tarefa cadastrada: #{tarefa}"
  elsif opcao == 2
    puts
    tarefas.each do |i|
      p " #{i}"
    end
  elsif opcao == 3
    print 'Qual tarefa deseja encontrar: '
    procura = gets
    tarefas.each do |(key,value)|
      if tarefa[key] == procura
        elementos_encontrados << tarefa
      end
    end
  elsif opcao == 4
    print 'Alterar status da tarefa: '
    alterar = gets
    tarefas.each do |tarefa|
      if tarefa == procura
        puts "##{i} - #{tarefa[:nome]} - #{tarefa[:status]}"
        puts
        puts 'Deseja alterar o status da tarefa (Y/N)'
        resp = gets
        if resp == 'Y'
          tarefa[:status] = true;
        end
      else
        puts 'Elemento não encontrado'
      end
    end
  elsif opcao == 5
    system('clear')
  else
    puts
    puts 'Opção inválida'
  end
  puts
  puts
  puts
  opcao = menu()
end
