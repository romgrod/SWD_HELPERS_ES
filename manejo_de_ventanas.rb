# encoding: utf-8

def titulo_de_ventana
  @browser.title
end

# Devuelve un array con todos los ids de las ventanas que están abiertas
def ventanas_abiertas
  @browser.window_handles
end

def saltar_a_ventana id
  @browser.switch_to.window(id)
end

def saltar_a_la_ultima_ventana_abierta
  self.saltar_a_ventana(ventanas_abiertas.last)
end

def saltar_a_ventana_con_titulo titulo
  ventanas_abiertas.each do |id|
    if titulo_de_ventana == titulo
      saltar_a_ventana(id)
      return true # Devuelve true si encontró la ventana
    end
  end
  false # NO encontró la ventana
end