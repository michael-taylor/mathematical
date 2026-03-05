require "mathematical"

latex = '$$ x^n + y^n = z^n $$'

png_render = Mathematical.new({ format: :png })
svg_render = Mathematical.new({ format: :svg })
mml_render = Mathematical.new({ format: :mathml })

png_hash = png_render.render(latex)
svg_hash = svg_render.render(latex)
mml_hash = mml_render.render(latex)

File.binwrite("test.png", png_hash[:data])
File.open("test.svg", "w") { |f| f.write(svg_hash[:data]) }
puts "MathML: #{mml_hash[:data]}"
