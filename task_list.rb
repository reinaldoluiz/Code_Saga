def menu()
  puts "Escolha uma opção no menu: \n"
  puts '[1] Inserir uma tarefa'
  puts '[2] Ver todas as tarefas'
  puts '[3] Clear'
  puts '[4] Sair'
  puts
  print 'Opção escolhida: '
  gets.to_i
end

puts "Bem-vindo ao Task List!"
opcao = menu()
tarefa = ""
tarefas = []

while opcao != 4 do
  if opcao == 1
    print 'Digite sua tarefa: '
    tarefa = gets
    tarefas << tarefa
    puts
    puts 'Tarefa cadastrada: ' + tarefa
  elsif opcao == 2
    puts
    tarefas.each_with_index do |tarefa, i|
      puts "##{i} - #{tarefa}"
    end

  elsif opcao == 3
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
