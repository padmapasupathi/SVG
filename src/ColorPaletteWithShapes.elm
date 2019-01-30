type RGB = RGB Float Float Float
type Selected = SelectedSquare | SelectedRect | SelectedNone
drawRGB (RGB r g b) = rgb r g b
init = { time = 0 , squareColour = RGB 255 255 255, rectColour = RGB 100 100 100, selected = SelectedNone }
type Msg = Tick Float GetKeyState | Click RGB | ClickRect | ClickSquare | ClickBackground
  
update msg model =
    case msg of
        Tick t _ -> { model | time = t }
        ClickRect -> { model | selected = SelectedRect }
        ClickSquare -> { model | selected = SelectedSquare }
        ClickBackground -> { model | selected = SelectedNone }
        Click clr -> case model.selected of
                        SelectedNone   -> model
                        SelectedSquare -> { model | squareColour = clr }
                        SelectedRect   -> { model | rectColour = clr }
        
myShapes model = [ 
           rect 40 60 |> filled grey |> move (100,20) |> notifyTap ClickBackground
          ,rectangle 10 20 |> filled (drawRGB model.rectColour) 
             |> addOutline (case model.selected of
                              SelectedRect -> solid (1 + cos (3*model.time))
                              _ -> solid 0.5
                              ) black |> move (88,30) |> notifyTap ClickRect 
          , square 7 |> filled (drawRGB model.squareColour) |> addOutline (case model.selected of
                              SelectedSquare -> solid (1 + cos (3*model.time))
                              _ -> solid 0.5
                              ) black |> move (88,0) |> notifyTap ClickSquare
          , group [ rect 140 100 |> outlined (solid 1) black
          , square 9 |> filled (rgb 51 0 0) |> move(-60,40) |> notifyTap (Click (RGB 51 0 0))
          , square 9 |> filled (rgb 51 25 0) |> move(-50,40) |> notifyTap (Click (RGB 51 25 0))
          , square 9 |> filled (rgb 51 51 0) |> move(-40,40) |> notifyTap (Click (RGB 51 51 0))
          , square 9 |> filled (rgb 25 51 0) |> move(-30,40) |> notifyTap (Click (RGB 25 51 0))
          , square 9 |> filled (rgb 0 51 0) |> move(-20,40) |> notifyTap (Click (RGB 0 51 0))
          , square 9 |> filled (rgb 0 51 25) |> move(-10,40) |> notifyTap (Click (RGB 0 51 25))
          , square 9 |> filled (rgb 0 51 51) |> move(0,40) |> notifyTap (Click (RGB 0 51 51))
          , square 9 |> filled (rgb 0 25 51) |> move(10,40) |> notifyTap (Click (RGB 0 25 51))
          , square 9 |> filled (rgb 0 0 51) |> move(20,40) |> notifyTap (Click (RGB 0 0 51))
          , square 9 |> filled (rgb 25 0 51) |> move(30,40) |> notifyTap (Click (RGB 25 0 51))
          , square 9 |> filled (rgb 51 0 51) |> move(40,40) |> notifyTap (Click (RGB 51 0 51))
          , square 9 |> filled (rgb 51 0 25) |> move(50,40) |> notifyTap (Click (RGB 51 0 25))
          , square 9 |> filled (rgb 0 0 0) |> move(60,40) |> notifyTap (Click (RGB 0 0 0))
          , square 9 |> filled (rgb 102 0 0) |> move(-60,30) |> notifyTap (Click (RGB 102 0 0))
          , square 9 |> filled (rgb 102 51 0) |> move(-50,30) |> notifyTap (Click (RGB 102 51 0))
          , square 9 |> filled (rgb 102 102 0) |> move(-40,30) |> notifyTap (Click (RGB 102 102 0))
          , square 9 |> filled (rgb 51 102 0) |> move(-30,30) |> notifyTap (Click (RGB 51 102 0))
          , square 9 |> filled (rgb 0 102 0) |> move(-20,30) |> notifyTap (Click (RGB 0 102 0))
          , square 9 |> filled (rgb 0 102 51) |> move(-10,30) |> notifyTap (Click (RGB 0 102 51))
          , square 9 |> filled (rgb 0 102 102) |> move(0,30) |> notifyTap (Click (RGB 0 102 102))
          , square 9 |> filled (rgb 0 51 102) |> move(10,30) |> notifyTap (Click (RGB 0 51 102))
          , square 9 |> filled (rgb 0 0 102) |> move(20,30) |> notifyTap (Click (RGB 0 0 102))
          , square 9 |> filled (rgb 51 0 102) |> move(30,30) |> notifyTap (Click (RGB 51 0 102))
          , square 9 |> filled (rgb 102 0 102) |> move(40,30) |> notifyTap (Click (RGB 102 0 102))
          , square 9 |> filled (rgb 102 0 51) |> move(50,30) |> notifyTap (Click (RGB 102 0 51))
          , square 9 |> filled (rgb 32 32 32) |> move(60,30) |> notifyTap (Click (RGB 32 32 32))
          , square 9 |> filled (rgb 153 0 0) |> move(-60,20) |> notifyTap (Click (RGB 153 0 0))
          , square 9 |> filled (rgb 153 76 0) |> move(-50,20) |> notifyTap (Click (RGB 153 76 0))
          , square 9 |> filled (rgb 153 153 0) |> move(-40,20) |> notifyTap (Click (RGB 153 153 0))
          , square 9 |> filled (rgb 76 153 0) |> move(-30,20) |> notifyTap (Click (RGB 76 153 0))
          , square 9 |> filled (rgb 0 153 0) |> move(-20,20) |> notifyTap (Click (RGB 0 153 0))
          , square 9 |> filled (rgb 0 153 76) |> move(-10,20) |> notifyTap (Click (RGB 0 153 76))
          , square 9 |> filled (rgb 0 153 153) |> move(0,20) |> notifyTap (Click (RGB 0 153 153))
          , square 9 |> filled (rgb 0 76 153) |> move(10,20) |> notifyTap (Click (RGB 0 76 153))
          , square 9 |> filled (rgb 0 0 153) |> move(20,20) |> notifyTap (Click (RGB 0 0 153))
          , square 9 |> filled (rgb 76 0 153) |> move(30,20) |> notifyTap (Click (RGB 76 0 153))
          , square 9 |> filled (rgb 153 0 153) |> move(40,20) |> notifyTap (Click (RGB 153 0 153))
          , square 9 |> filled (rgb 153 0 76) |> move(50,20) |> notifyTap (Click (RGB 153 0 76))
          , square 9 |> filled (rgb 64 64 64) |> move(60,20) |> notifyTap (Click (RGB 64 64 64))
          , square 9 |> filled (rgb 204 0 0) |> move(-60,10) |> notifyTap (Click (RGB 204 0 0))
          , square 9 |> filled (rgb 204 102 0) |> move(-50,10) |> notifyTap (Click (RGB 204 102 0))
          , square 9 |> filled (rgb 204 204 0) |> move(-40,10) |> notifyTap (Click (RGB 204 204 0))
          , square 9 |> filled (rgb 102 204 0) |> move(-30,10) |> notifyTap (Click (RGB 102 204 0))
          , square 9 |> filled (rgb 0 204 0) |> move(-20,10) |> notifyTap (Click (RGB 0 204 0))
          , square 9 |> filled (rgb 0 204 102) |> move(-10,10) |> notifyTap (Click (RGB 0 204 102))
          , square 9 |> filled (rgb 0 204 204) |> move(0,10) |> notifyTap (Click (RGB 0 204 204))
          , square 9 |> filled (rgb 0 102 204) |> move(10,10) |> notifyTap (Click (RGB 0 102 204))
          , square 9 |> filled (rgb 0 0 204) |> move(20,10) |> notifyTap (Click (RGB 0 0 204))
          , square 9 |> filled (rgb 102 0 204) |> move(30,10) |> notifyTap (Click (RGB 102 0 204))
          , square 9 |> filled (rgb 204 0 204) |> move(40,10) |> notifyTap (Click (RGB 204 0 204))
          , square 9 |> filled (rgb 204 0 102) |> move(50,10) |> notifyTap (Click (RGB 204 0 102))
          , square 9 |> filled (rgb 96 96 96) |> move(60,10) |> notifyTap (Click (RGB 96 96 96))
          , square 9 |> filled (rgb 255 0 0) |> move(-60,0) |> notifyTap (Click (RGB 255 0 0))
          , square 9 |> filled (rgb 255 128 0) |> move(-50,0) |> notifyTap (Click (RGB 255 128 0))
          , square 9 |> filled (rgb 255 255 0) |> move(-40,0) |> notifyTap (Click (RGB 255 255 0))
          , square 9 |> filled (rgb 128 255 0) |> move(-30,0) |> notifyTap (Click (RGB 128 255 0))
          , square 9 |> filled (rgb 0 255 0) |> move(-20,0) |> notifyTap (Click (RGB 0 255 0))
          , square 9 |> filled (rgb 0 255 128) |> move(-10,0) |> notifyTap (Click (RGB 0 255 128))
          , square 9 |> filled (rgb 0 255 255) |> move(0,0) |> notifyTap (Click (RGB 0 255 255))
          , square 9 |> filled (rgb 0 128 255) |> move(10,0) |> notifyTap (Click (RGB 0 128 255))
          , square 9 |> filled (rgb 0 0 255) |> move(20,0) |> notifyTap (Click (RGB 0 0 255))
          , square 9 |> filled (rgb 127 0 255) |> move(30,0) |> notifyTap (Click (RGB 127 0 255))
          , square 9 |> filled (rgb 255 0 255) |> move(40,0) |> notifyTap (Click (RGB 255 0 255))
          , square 9 |> filled (rgb 255 0 127) |> move(50,0) |> notifyTap (Click (RGB 255 0 127))
          , square 9 |> filled (rgb 128 128 128) |> move(60,0) |> notifyTap (Click (RGB 128 128 128))
          , square 9 |> filled (rgb 255 51 51) |> move(-60,-10) |> notifyTap (Click (RGB 255 51 51))
          , square 9 |> filled (rgb 255 153 51) |> move(-50,-10) |> notifyTap (Click (RGB 255 153 51))
          , square 9 |> filled (rgb 255 255 51) |> move(-40,-10) |> notifyTap (Click (RGB 255 255 51))
          , square 9 |> filled (rgb 153 255 51) |> move(-30,-10) |> notifyTap (Click (RGB 153 255 51))
          , square 9 |> filled (rgb 51 255 51) |> move(-20,-10) |> notifyTap (Click (RGB 51 255 51))
          , square 9 |> filled (rgb 51 255 153) |> move(-10,-10) |> notifyTap (Click (RGB 51 255 153))
          , square 9 |> filled (rgb 51 255 255) |> move(0,-10) |> notifyTap (Click (RGB 51 255 255))
          , square 9 |> filled (rgb 51 153 255) |> move(10,-10) |> notifyTap (Click (RGB 51 153 255))
          , square 9 |> filled (rgb 51 51 255) |> move(20,-10) |> notifyTap (Click (RGB 51 51 255))
          , square 9 |> filled (rgb 153 51 255) |> move(30,-10) |> notifyTap (Click (RGB 153 51 255))
          , square 9 |> filled (rgb 255 51 255) |> move(40,-10) |> notifyTap (Click (RGB 255 51 255))
          , square 9 |> filled (rgb 255 51 153) |> move(50,-10) |> notifyTap (Click (RGB 255 51 153))
          , square 9 |> filled (rgb 160 160 160) |> move(60,-10) |> notifyTap (Click (RGB 160 160 160))
          , square 9 |> filled (rgb 255 102 102) |> move(-60,-20) |> notifyTap (Click (RGB 255 102 102))
          , square 9 |> filled (rgb 255 178 102) |> move(-50,-20) |> notifyTap (Click (RGB 255 178 102))
          , square 9 |> filled (rgb 255 255 102) |> move(-40,-20) |> notifyTap (Click (RGB 255 255 102))
          , square 9 |> filled (rgb 178 255 102) |> move(-30,-20) |> notifyTap (Click (RGB 178 255 102))
          , square 9 |> filled (rgb 102 255 102) |> move(-20,-20) |> notifyTap (Click (RGB 102 255 102))
          , square 9 |> filled (rgb 102 255 178) |> move(-10,-20) |> notifyTap (Click (RGB 102 255 178))
          , square 9 |> filled (rgb 102 255 255) |> move(0,-20) |> notifyTap (Click (RGB 102 255 255))
          , square 9 |> filled (rgb 102 178 255) |> move(10,-20) |> notifyTap (Click (RGB 102 178 255))
          , square 9 |> filled (rgb 102 102 255) |> move(20,-20) |> notifyTap (Click (RGB 102 102 255))
          , square 9 |> filled (rgb 178 102 255) |> move(30,-20) |> notifyTap (Click (RGB 178 102 255))
          , square 9 |> filled (rgb 255 102 255) |> move(40,-20) |> notifyTap (Click (RGB 255 102 255))
          , square 9 |> filled (rgb 255 102 178) |> move(50,-20) |> notifyTap (Click (RGB 255 102 178))
          , square 9 |> filled (rgb 192 192 192) |> move(60,-20) |> notifyTap (Click (RGB 192 192 192))
          , square 9 |> filled (rgb 255 153 153) |> move(-60,-30) |> notifyTap (Click (RGB 255 153 153))
          , square 9 |> filled (rgb 255 204 153) |> move(-50,-30) |> notifyTap (Click (RGB 255 204 153))
          , square 9 |> filled (rgb 255 255 153) |> move(-40,-30) |> notifyTap (Click (RGB 255 255 153))
          , square 9 |> filled (rgb 204 255 153) |> move(-30,-30) |> notifyTap (Click (RGB 204 255 153))
          , square 9 |> filled (rgb 153 255 153) |> move(-20,-30) |> notifyTap (Click (RGB 153 255 153))
          , square 9 |> filled (rgb 153 255 204) |> move(-10,-30) |> notifyTap (Click (RGB 153 255 204))
          , square 9 |> filled (rgb 153 255 255) |> move(0,-30) |> notifyTap (Click (RGB 153 255 255))
          , square 9 |> filled (rgb 153 204 255) |> move(10,-30) |> notifyTap (Click (RGB 153 204 255))
          , square 9 |> filled (rgb 153 153 255) |> move(20,-30) |> notifyTap (Click (RGB 153 153 255))
          , square 9 |> filled (rgb 204 153 255) |> move(30,-30) |> notifyTap (Click (RGB 204 153 255))
          , square 9 |> filled (rgb 255 153 255) |> move(40,-30) |> notifyTap (Click (RGB 255 153 255))
          , square 9 |> filled (rgb 255 153 204) |> move(50,-30) |> notifyTap (Click (RGB 255 153 204))
          , square 9 |> filled (rgb 224 224 224) |> move(60,-30) |> notifyTap (Click (RGB 224 224 224))
          , square 9 |> filled (rgb 255 204 204) |> move(-60,-40) |> notifyTap (Click (RGB 255 204 204))
          , square 9 |> filled (rgb 255 229 204) |> move(-50,-40) |> notifyTap (Click (RGB 255 229 204))
          , square 9 |> filled (rgb 255 255 204) |> move(-40,-40) |> notifyTap (Click (RGB 255 255 204))
          , square 9 |> filled (rgb 229 255 204) |> move(-30,-40) |> notifyTap (Click (RGB 229 255 204))
          , square 9 |> filled (rgb 204 255 204) |> move(-20,-40) |> notifyTap (Click (RGB 204 255 204))
          , square 9 |> filled (rgb 204 255 229) |> move(-10,-40) |> notifyTap (Click (RGB 204 255 229))
          , square 9 |> filled (rgb 204 255 255) |> move(0,-40) |> notifyTap (Click (RGB 204 255 255))
          , square 9 |> filled (rgb 204 229 255) |> move(10,-40) |> notifyTap (Click (RGB 204 229 255))
          , square 9 |> filled (rgb 204 204 255) |> move(20,-40) |> notifyTap (Click (RGB 204 204 255))
          , square 9 |> filled (rgb 229 204 255) |> move(30,-40) |> notifyTap (Click (RGB 229 204 255))
          , square 9 |> filled (rgb 255 204 255) |> move(40,-40) |> notifyTap (Click (RGB 255 204 255))
          , square 9 |> filled (rgb 255 204 229) |> move(50,-40) |> notifyTap (Click (RGB 255 204 229))
          , square 9 |> filled (rgb 255 255 255) |> move(60,-40) |> notifyTap (Click (RGB 255 255 255))
          ] 
          ]

main = gameApp Tick { model = init, view = view, update = update, title = "Color Palette and shapes" }

view model = collage 192 128 (myShapes model)
