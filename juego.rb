# Validar el argumento pasado por el usuario
unless ['piedra', 'papel', 'tijera'].include?(ARGV[0])
  puts "Argumento invalido: Debe ser piedra, papel o tijera."
  exit
end

# Opciones posibles para el juego
opciones = ['piedra', 'papel', 'tijera']

# Generar la opción aleatoria del computador
computador = opciones[rand(3)]

# Obtener la opción del usuario
jugador = ARGV[0]

# Mostrar la opción del computador
puts "Computador juega #{computador}."

# Determinar el resultado del juego
if jugador == computador
  puts "Empataste."
elsif (jugador == 'piedra' && computador == 'tijera') ||
      (jugador == 'papel' && computador == 'piedra') ||
      (jugador == 'tijera' && computador == 'papel')
  puts "Ganaste."
else
  puts "Perdiste."
end
