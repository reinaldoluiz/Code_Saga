puts "Bem-vindo ao Task List! Escolha uma opção no menu: \n"
puts '[1] Inserir uma tarefa'
puts '[2] Ver todas as tarefas'
puts '[3] Clear'
puts '[4] Sair'
puts
print 'Opção escolhida: '

opcao = gets.to_i
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
    puts tarefas
  elsif opcao == 3
    system('clear')
  else
    puts
    puts 'Opção inválida'
  end
  puts
  puts
  puts
  puts "Bem-vindo ao Task List! Escolha uma opção no menu: \n"
  puts '[1] Inserir uma tarefa'
  puts '[2] Ver todas as tarefas'
  puts '[3] Clear'
  puts '[4] Sair'
  puts
  print 'Opção escolhida: '
  opcao = gets.to_i
end
