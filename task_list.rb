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
tarefa  = {}
File.open('task.txt','r').each do |file|
  tarefa[file] = false
end
while opcao != 6 do
  if opcao == 1
    print 'Digite sua tarefa: '
    nome = gets
    tarefa[nome] = false
    puts
    puts "Tarefa cadastrada: #{tarefa}"
  elsif opcao == 2
    puts
    tarefa.each_with_index do |(key, value),i|
      p " #{i} - #{key.strip}"
    end
  elsif opcao == 3
    print 'Qual tarefa deseja encontrar: '
    procura = gets
    tarefa.each_with_index do |(key, value),i|
      if key == procura
        p " #{i} - #{key.strip}"
      end
    end
  elsif opcao == 4
    tarefa.each_with_index do |(key, value), i|
      p "#{i} - #{key.strip} #{value}"
    end
    puts 'Selecione a tarefa que deseja alterar(escolher via o número)'
    tarefa_index = gets.to_i

    tarefa.each_with_index do |(key, value),i|
      if i == tarefa_index
        p " #{i} - #{key.strip}"
        puts 'Deseja alterar o status da tarefa (Y/N)'
        resp = gets
        if resp.strip === "Y"
          if tarefa[key] == true
            tarefa[key] = false
          else
            tarefa[key] = true
          end
          p " #{i} - #{key.strip} - Estado alterado"
        else
          p "resposta incorreta"
        end
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
File.open('task.txt', 'a') do |file|
  tarefa.each_with_index do |(key, value), i|
    file.write("#{key}")
  end
end
