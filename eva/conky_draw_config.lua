-- Define your visual elements here
-- For examples, and a complete list on the possible elements and their 
-- properties, go to https://github.com/fisadev/conky-draw/
-- (and be sure to use the lastest version)
-- Posición global

x1 = 250
y1 = 165
radio = 90
ancho = 10
ancho2 = ancho / 2
radio2 = radio + 30 + ancho

-- lineas
-- lineas batería
ang_bat = 45
x_bat_ang1 = x1 + ( radio + ancho / 2 ) * math.cos(math.rad(ang_bat))
y_bat_ang1 = y1 + ( radio + ancho / 2 ) * math.sin(math.rad(ang_bat))
x_bat_ang2 = x1 + ( radio + 60 ) * math.cos(math.rad(ang_bat))
y_bat_ang2 = y1 + ( radio + 60 ) * math.sin(math.rad(ang_bat))

x_bat1 = x_bat_ang2
y_bat1 = y_bat_ang2 
x_bat2 = x_bat1 + 60 
y_bat2 = y_bat1 

-- linea ram
ang_ram = 135
x_ram_ang1 = x1 + ( radio + ancho / 2 ) * math.cos(math.rad(ang_ram))
y_ram_ang1 = y1 + ( radio + ancho / 2 ) * math.sin(math.rad(ang_ram))
x_ram_ang2 = x1 + ( radio + 60 ) * math.cos(math.rad(ang_ram))
y_ram_ang2 = y1 + ( radio + 60 ) * math.sin(math.rad(ang_ram))

x_ram1 = x_ram_ang2
y_ram1 = y_ram_ang2 
x_ram2 = x_ram1 - 60 
y_ram2 = y_ram1 

-- linea cpu
ang_cpu = 315
x_cpu_ang1 = x1 + ( radio + ancho / 2 ) * math.cos(math.rad(ang_cpu))
y_cpu_ang1 = y1 + ( radio + ancho / 2 ) * math.sin(math.rad(ang_cpu))
x_cpu_ang2 = x1 + ( radio + 60 ) * math.cos(math.rad(ang_cpu))
y_cpu_ang2 = y1 + ( radio + 60 ) * math.sin(math.rad(ang_cpu))

x_cpu1 = x_cpu_ang2
y_cpu1 = y_cpu_ang2 
x_cpu2 = x_cpu1 + 60 
y_cpu2 = y_cpu1 

-- linea root
ang_root = 225
x_root_ang1 = x1 + ( radio2 + ancho2 / 2 ) * math.cos(math.rad(ang_root))
y_root_ang1 = y1 + ( radio2 + ancho2 / 2 ) * math.sin(math.rad(ang_root))
x_root_ang2 = x1 + ( radio2 + 60 ) * math.cos(math.rad(ang_root))
y_root_ang2 = y1 + ( radio2 + 60 ) * math.sin(math.rad(ang_root))

x_root1 = x_root_ang2
y_root1 = y_root_ang2 
x_root2 = x_root1 - 60 
y_root2 = y_root1 

-- linea fecha
x_fecha1 = x1 + radio2 + ancho2 / 2
y_fecha1 = y1
x_fecha2 = x_fecha1 + 320 
y_fecha2 = y_fecha1 

elements = {
  {
    -- RAM
    kind = 'ring_graph',
    conky_value = 'memperc',
    center = {x = x1, y = y1},
    radius = radio,
    start_angle = 122,
    end_angle = 238,

    bar_color = 0xCB1917,
    bar_thickness = 10,

    background_color = 0xcb1917,
    background_alpha = 0.5,
    background_thickness = 10,
  },
  {
    -- CPU
    kind = 'ring_graph',
    conky_value = 'cpu',
    center = {x = x1, y = y1 },
    radius = radio,
    start_angle = 242,
    end_angle = 358,

    bar_color = 0xCB1917,
    bar_thickness = 10,

    background_color = 0xcb1917,
    background_alpha = 0.5,
    background_thickness = 10,
  },
  {
    -- up speed
    kind = 'ring_graph',
    conky_value = 'battery_percent',
    center = {x = x1, y = y1 },
    radius = radio,
    start_angle = 2,
    end_angle = 118,

    bar_color = 0xCB1917,
    bar_thickness = ancho,

    background_color = 0xcb1917,
    background_alpha = 0.5,
    background_thickness = ancho,
  },
  {
    -- root space
    kind = 'ring_graph',
    conky_value = 'fs_used_perc /',
    center = {x = x1, y = y1 },
    radius = radio2,
    start_angle = 150,
    end_angle = 390,

    bar_color = 0xCB1917,
    bar_thickness = ancho2,

    background_color = 0xcb1917,
    background_alpha = 0.5,
    background_thickness = ancho2,
  },

  {
    --linea batería
    kind = 'line',
    from = {x = x_bat_ang1, y = y_bat_ang1},
    to = {x = x_bat_ang2, y = y_bat_ang2},

    color = 0xCB1917,
    alpha = 1,
    thickness = 2,
  },
  {
    --linea batería
    kind = 'line',
    from = {x = x_bat1, y = y_bat1},
    to = {x = x_bat2, y = y_bat2},

    color = 0xCB1917,
    alpha = 1,
    thickness = 2,
  },

  {
    --linea ram
    kind = 'line',
    from = {x = x_ram_ang1, y = y_ram_ang1},
    to = {x = x_ram_ang2, y = y_ram_ang2},

    color = 0xCB1917,
    alpha = 1,
    thickness = 2,
  },
  {
    --linea ram
    kind = 'line',
    from = {x = x_ram1, y = y_ram1},
    to = {x = x_ram2, y = y_ram2},

    color = 0xCB1917,
    alpha = 1,
    thickness = 2,
  },

  {
    --linea cpu
    kind = 'line',
    from = {x = x_cpu_ang1, y = y_cpu_ang1},
    to = {x = x_cpu_ang2, y = y_cpu_ang2},

    color = 0xCB1917,
    alpha = 1,
    thickness = 2,
  },
  {
    --linea cpu
    kind = 'line',
    from = {x = x_cpu1, y = y_cpu1},
    to = {x = x_cpu2, y = y_cpu2},

    color = 0xCB1917,
    alpha = 1,
    thickness = 2,
  },

  {
    --linea root
    kind = 'line',
    from = {x = x_root_ang1, y = y_root_ang1},
    to = {x = x_root_ang2, y = y_root_ang2},

    color = 0xCB1917,
    alpha = 1,
    thickness = 2,
  },
  {
    --linea root
    kind = 'line',
    from = {x = x_root1, y = y_root1},
    to = {x = x_root2, y = y_root2},

    color = 0xCB1917,
    alpha = 1,
    thickness = 2,
  },

  {
    --linea fecha
    kind = 'line',
    from = {x = x_fecha1, y = y_fecha1},
    to = {x = x_fecha2, y = y_fecha2},

    color = 0xCB1917,
    alpha = 1,
    thickness = 2,
  },

  {
     kind = 'background',
     color = 0xe5e5e5,
     radius = 15,
     outline_thickness = 0,
  },

}
