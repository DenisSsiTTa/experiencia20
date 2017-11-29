# config.ru
require 'rack'
class MiPrimeraWebApp
  def call(env)
    @url = env['REQUEST_PATH']
    tipo = 'text/html; charset="utf-8"'

    if @url == '/index'
      [200, { 'Content-Type' => tipo }, ['<h1>Estás en el Index!</h1>']]
    elsif @url == '/otro'
      [200, { 'Content-Type' => tipo }, ['<h1>Estás en otro landing!</h1>']]
    else
      [404, {}, [File.read('404.html')]]
    end

  end
end
run MiPrimeraWebApp.new
