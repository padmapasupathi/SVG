{-
   This version uses a Zipper, which is described in https://people.mpi-sws.org/~skilpat/plerg/papers/huet-zipper-2up.pdf
   Instead of keeping a tree and a cursor which shadows the tree, we keep the focus tree, and the ingredients for building the tree back around the focus tree.
   The surgery functions are all simpler, and not harder to think about if you get used to them.
   The view function gets split over three pretty functions, but each of the functions is simpler.
-}


module IntBoolZipper2 exposing (cursorLeft)

--import Debug

import Browser
import Browser.Events as Browser
import Browser.Navigation as Navigation
import GraphicSVG exposing (..)
import GraphicSVG.Widget as Widget
import Html
import Html.Attributes as Html
import Json.Decode as Decoder
import Time
import Url



-- | data structure for Family Trees

type ElmType
    = TypeInt
    | TypeBool
    | TypeFloat

type Wrapper
    = WrapInt ElmInt
    | WrapBool ElmBool
    | WrapFloat ElmFloat

type ElmInt
    = IntConst Int
    | IntHole
    | IntAdd ElmInt ElmInt
    | IntMult ElmInt ElmInt
    | IntIf ElmBool ElmInt ElmInt

type ElmFloat
    = FloatConst Float
    | FloatHole
    | FloatAdd ElmFloat ElmFloat
    | FloatMult ElmFloat ElmFloat
    --| FloatIf ElmBool ElmInt ElmInt

type ElmIntPath
    = EITop
    -- FIXME | EIConst IntPath
    | EIAdd1 ElmIntPath ElmInt
    | EIAdd2 ElmInt ElmIntPath
    | EIMult1 ElmIntPath ElmInt
    | EIMult2 ElmInt ElmIntPath
    | EIIf1 ElmBool ElmIntPath ElmInt
    | EIIf2 ElmBool ElmInt ElmIntPath
    | IntGT1 ElmBoolPath ElmInt
    | IntGT2 ElmInt ElmBoolPath

type ElmFloatPath
    = EFTop
    -- FIXME | EIConst IntPath
    | EFAdd1 ElmFloatPath ElmFloat
    | EFAdd2 ElmFloat ElmFloatPath
    | EFMult1 ElmFloatPath ElmFloat
    | EFMult2 ElmFloat ElmFloatPath
    --| EFIf1 ElmBool ElmIntPath ElmInt
    --| EFIf2 ElmBool ElmInt ElmIntPath
    --| IntGT1 ElmBoolPath ElmInt
    --| IntGT2 ElmInt ElmBoolPath

type alias IntPath = Int

type alias FloatPath = Float

type ElmBool
    = BoolConst Bool
    | BoolHole
    | BoolOr ElmBool ElmBool
    | BoolAnd ElmBool ElmBool
    | BoolNot ElmBool
    | IntGT ElmInt ElmInt

type alias BoolPath = Bool

type ElmBoolPath
    = EBTop
    | EBOr1 ElmBoolPath ElmBool
    | EBOr2 ElmBool ElmBoolPath
    | EBAnd1 ElmBoolPath ElmBool
    | EBAnd2 ElmBool ElmBoolPath
    | EBNot ElmBoolPath
    | EIIf0 ElmIntPath ElmInt ElmInt

type Location
    = LocInt ElmInt ElmIntPath
    | LocBool ElmBool ElmBoolPath
    | LocFloat ElmFloat ElmFloatPath


-- change (Loc _ path) newPerson = Loc newPerson path

--cursorUp, cursorDown, cursorLeft, cursorRight : Cursor -> Cursor
cursorLeft loc =
    case loc of
        (LocInt ei path) ->
            case path of
                EITop -> loc -- already at left (ie head of tree)
                --EIConst i -> LocInt ei (L) ???
                EIAdd1 leftPath right -> LocInt (IntAdd ei right) leftPath
                EIAdd2 left rightPath -> LocInt (IntAdd left ei) rightPath
                EIMult1 leftPath right -> LocInt (IntMult ei right) leftPath
                EIMult2 left rightPath -> LocInt (IntMult left ei) rightPath
                EIIf1 bool leftPath right -> LocInt (IntIf bool ei right) leftPath
                EIIf2 bool left rightPath -> LocInt (IntIf bool left ei) rightPath
                IntGT1 leftPath right -> LocBool (IntGT ei right) leftPath
                IntGT2 left rightPath -> LocBool (IntGT left ei) rightPath

        (LocFloat ef path) ->
            case path of
                EFTop -> loc -- already at left (ie head of tree)
                --EIConst i -> LocInt ei (L) ???
                EFAdd1 leftPath right -> LocFloat (FloatAdd ef right) leftPath
                EFAdd2 left rightPath -> LocFloat (FloatAdd left ef) rightPath
                EFMult1 leftPath right -> LocFloat (FloatMult ef right) leftPath
                EFMult2 left rightPath -> LocFloat (FloatMult left ef) rightPath


        (LocBool eb path) ->
            case path of
                EBTop -> loc -- already at left (ie head of tree)
                EBOr1 leftPath right -> LocBool (BoolOr eb right) leftPath
                EBOr2 left rightPath -> LocBool (BoolOr left eb) rightPath
                EBAnd1 leftPath right -> LocBool (BoolAnd eb right) leftPath
                EBAnd2 left rightPath -> LocBool (BoolAnd left eb) rightPath
                EBNot onlyPath -> LocBool (BoolNot eb) onlyPath
                EIIf0 condPath left right -> LocInt (IntIf eb left right) condPath

cursorRight loc =
    case loc of
        (LocInt ei path) ->
            case ei of
                IntConst i -> loc -- already at leaf
                IntHole -> loc
                IntAdd left right -> LocInt left (EIAdd1 path right)
                IntMult left right -> LocInt left (EIMult1 path right)
                IntIf cond left right -> LocBool cond (EIIf0 path left right)

        (LocFloat ef path) ->
            case ef of
                FloatConst i -> loc -- already at leaf
                FloatHole -> loc
                FloatAdd left right -> LocInt left (EIAdd1 path right)
                FloatMult left right -> LocInt left (EIMult1 path right)
                --IntIf cond left right -> LocBool cond (EIIf0 path left right)

        (LocBool eb path) ->
            case eb of
                BoolConst _ -> loc -- already at leaf
                BoolHole -> loc
                BoolOr left right -> LocBool left (EBOr1 path right)
                BoolAnd left right -> LocBool left (EBAnd1 path right)
                BoolNot left -> LocBool left (EBNot path)
                IntGT left right -> LocInt left (IntGT1 path right)

cursorUp loc =
    case loc of
        (LocInt ei path) ->
            case path of
                EITop -> loc -- no siblings
                --EIConst i -> LocInt ei (L) ???
                EIAdd1 leftPath right -> LocInt right (EIAdd2 ei leftPath)
                EIAdd2 left rightPath -> LocInt left (EIAdd1 rightPath ei)
                EIMult1 leftPath right -> LocInt right (EIMult2 ei leftPath)
                EIMult2 left rightPath -> LocInt left (EIMult1 rightPath ei)
                EIIf1 bool leftPath right -> LocBool bool (EIIf0 leftPath ei right)
                EIIf2 bool left rightPath -> LocInt left (EIIf1 bool rightPath ei)
                IntGT1 leftPath right -> LocInt right (IntGT2 ei leftPath)
                IntGT2 left rightPath -> LocInt left (IntGT1 rightPath ei)

        (LocFloat ef path) ->
            case path of
                EFTop -> loc -- no siblings
                --EIConst i -> LocInt ei (L) ???
                EFAdd1 leftPath right -> LocFloat right (EFAdd2 ef leftPath)
                EFAdd2 left rightPath -> LocFloat left (EFAdd1 rightPath ef)
                EFMult1 leftPath right -> LocFloat right (EFMult2 ef leftPath)
                EFMult2 left rightPath -> LocFloat left (EFMult1 rightPath ef)


        (LocBool eb path) ->
            case path of
                EBTop -> loc -- no siblings
                EBOr1 leftPath right -> LocBool right (EBOr2 eb leftPath)
                EBOr2 left rightPath -> LocBool left (EBOr1 rightPath eb)
                EBAnd1 leftPath right -> LocBool right (EBAnd2 eb leftPath)
                EBAnd2 left rightPath -> LocBool left (EBAnd1 rightPath eb)
                EBNot onlyPath -> loc -- one argument
                EIIf0 condPath left right -> LocInt right (EIIf2 eb left condPath)

cursorDown loc =
    case loc of
        (LocInt ei path) ->
            case path of
                EITop -> loc -- no siblings
                --EIConst i -> LocInt ei (L) ???
                EIAdd1 leftPath right -> LocInt right (EIAdd2 ei leftPath)
                EIAdd2 left rightPath -> LocInt left (EIAdd1 rightPath ei)
                EIMult1 leftPath right -> LocInt right (EIMult2 ei leftPath)
                EIMult2 left rightPath -> LocInt left (EIMult1 rightPath ei)
                EIIf1 bool leftPath right -> LocInt right (EIIf2 bool ei leftPath)
                EIIf2 bool left rightPath -> LocBool bool (EIIf0 rightPath left ei)
                IntGT1 leftPath right -> LocInt right (IntGT2 ei leftPath)
                IntGT2 left rightPath -> LocInt left (IntGT1 rightPath ei)

        (LocFloat ef path) ->
            case path of
                EFTop -> loc -- no siblings
                --EIConst i -> LocInt ei (L) ???
                EFAdd1 leftPath right -> LocFloat right (EFAdd2 ef leftPath)
                EFAdd2 left rightPath -> LocFloat left (EFAdd1 rightPath ef)
                EFMult1 leftPath right -> LocFloat right (EFMult2 ef leftPath)
                EFMult2 left rightPath -> LocFloat left (EFMult1 rightPath ef)


        (LocBool eb path) ->
            case path of
                EBTop -> loc -- no siblings
                EBOr1 leftPath right -> LocBool right (EBOr2 eb leftPath)
                EBOr2 left rightPath -> LocBool left (EBOr1 rightPath eb)
                EBAnd1 leftPath right -> LocBool right (EBAnd2 eb leftPath)
                EBAnd2 left rightPath -> LocBool left (EBAnd1 rightPath eb)
                EBNot onlyPath -> loc -- one argument
                EIIf0 condPath left right -> LocInt left (EIIf1 eb condPath right)

insertHole loc =
    case loc of
        LocInt ei path -> LocInt IntHole path
        LocBool eb path -> LocBool BoolHole path
        LocFloat ef path -> LocFloat FloatHole path

insertAlternative loc = loc

-- | render the Family Tree as text

prettyLocation : Location ->
        ( Shape Msg -- Shape to draw this person
        , Float -- height of this component
        )
prettyLocation loc =
    case loc of
        (LocInt ei path) ->
            let
                (cursorShapes, cursorHeight) = prettyInt ei
            in
                prettyWrapInt  ( group [ rect 10000 cursorHeight |> filled orange |> move ( 0, 0.75 * letterHeight - 0.5 * cursorHeight )
                                    , cursorShapes
                                    ]
                            , cursorHeight
                            )
                            path

        (LocFloat ef path) ->
            let
                (cursorShapes, cursorHeight) = prettyFloat ef
            in
                prettyWrapFloat  ( group [ rect 10000 cursorHeight |> filled orange |> move ( 0, 0.75 * letterHeight - 0.5 * cursorHeight )
                                    , cursorShapes
                                    ]
                            , cursorHeight
                            )
                            path

        (LocBool eb path) ->
            let
                (cursorShapes, cursorHeight) = prettyBool eb
            in
                prettyWrapBool  ( group [ rect 10000 cursorHeight |> filled orange |> move ( 0, 0.75 * letterHeight - 0.5 * cursorHeight )
                                    , cursorShapes
                                    ]
                            , cursorHeight
                            )
                            path

mkIf clr (condShape,condHeight) (leftShape,leftHeight) (rightShape,rightHeight) =
    ( group
        [ renderText clr "( if "
        , condShape |> move ( 4 * letterWidth, -letterHeight  )
        , renderText clr "  then" |> move ( 0, -letterHeight - condHeight  )
        , leftShape |> move ( 4 * letterWidth, -2 * letterHeight - condHeight )
        , renderText clr "  else" |> move ( 0, -2 * letterHeight - leftHeight - condHeight)
        , rightShape |> move ( 4 * letterWidth, -3 * letterHeight - leftHeight - condHeight )
        , renderText clr ")" |> move ( 0, -3 * letterHeight - leftHeight - condHeight - rightHeight)
        ]
    , 4 * letterHeight + leftHeight + leftHeight + rightHeight
    )

mkBinary clr op (leftShape,leftHeight) (rightShape,rightHeight) =
    ( group
        [ renderText clr <| "( " ++ op
        , leftShape
            |> move ( 4 * letterWidth, -letterHeight )
        , rightShape
            |> move ( 4 * letterWidth, -letterHeight - leftHeight )
        , renderText clr ")" |> move ( 0, -letterHeight - leftHeight - rightHeight )
        ]
    , 2 * letterHeight + leftHeight + rightHeight
    )

mkUnary clr op (leftShape,leftHeight) =
    ( group
        [ renderText clr <| "( " ++ op
        , leftShape
            |> move ( 4 * letterWidth, -letterHeight )
        , renderText clr ")" |> move ( 0, -letterHeight - leftHeight )
        ]
    , 2 * letterHeight + leftHeight
    )

prettyWrapInt :
    (Shape Msg, Float)
    -> ElmIntPath
    ->
        ( Shape Msg -- Shapes to draw this person
        , Float -- height of this component
        )
prettyWrapInt (innerShape,innerHeight) path =
    let
        twoArg op pathIsLeft subPath coValue =
            let
                (coParentShape,coParentHeight) = prettyInt coValue
            in
                prettyWrapInt   ( mkBinary clrInt op
                                    (if pathIsLeft then (innerShape,innerHeight) else (coParentShape,coParentHeight))
                                    (if pathIsLeft then (coParentShape,coParentHeight) else (innerShape,innerHeight))
                                )
                                subPath
    in
        case path of
            EITop -> (innerShape,innerHeight)
            EIAdd1 leftPath right -> twoArg "(+)" True leftPath right
            EIAdd2 left rightPath -> twoArg "(+)" False rightPath left
            EIMult1 leftPath right -> twoArg "(*)" True leftPath right
            EIMult2 left rightPath -> twoArg "(*)" False rightPath left
            EIIf1 bool leftPath right ->
                prettyWrapInt  (mkIf clrInt (prettyBool bool) (innerShape,innerHeight) (prettyInt right))
                                leftPath
            EIIf2 bool left rightPath ->
                    prettyWrapInt   ( mkIf clrInt (prettyBool bool) (prettyInt left) (innerShape,innerHeight)
                                    )
                                    rightPath
            IntGT1 leftPath right -> prettyWrapBool (mkBinary clrBool "(>)" (innerShape,innerHeight) (prettyInt right))
                                        leftPath
            IntGT2 left rightPath -> prettyWrapBool (mkBinary clrBool "(>)" (prettyInt left) (innerShape,innerHeight))
                                        rightPath

prettyWrapFloat :
    (Shape Msg, Float)
    -> ElmFloatPath
    ->
        ( Shape Msg -- Shapes to draw this person
        , Float -- height of this component
        )
prettyWrapFloat (innerShape,innerHeight) path =
    let
        twoArg op pathIsLeft subPath coValue =
            let
                (coParentShape,coParentHeight) = prettyFloat coValue
            in
                prettyWrapFloat   ( mkBinary clrFloat op
                                    (if pathIsLeft then (innerShape,innerHeight) else (coParentShape,coParentHeight))
                                    (if pathIsLeft then (coParentShape,coParentHeight) else (innerShape,innerHeight))
                                )
                                subPath
    in
        case path of
            EFTop -> (innerShape,innerHeight)
            EFAdd1 leftPath right -> twoArg "(+)" True leftPath right
            EFAdd2 left rightPath -> twoArg "(+)" False rightPath left
            EFMult1 leftPath right -> twoArg "(*)" True leftPath right
            EFMult2 left rightPath -> twoArg "(*)" False rightPath left

prettyWrapBool :
    (Shape Msg, Float)
    -> ElmBoolPath
    ->
        ( Shape Msg -- Shapes to draw this person
        , Float -- height of this component
        )
prettyWrapBool (innerShape,innerHeight) path =
    let
        twoArg op pathIsLeft subPath coValue =
            let
                (coParentShape,coParentHeight) = prettyBool coValue
            in
                prettyWrapBool  ( group
                                    [ renderText clrBool <| "( " ++ op
                                    , (if pathIsLeft then innerShape else coParentShape)
                                        |> move ( 4 * letterWidth, -letterHeight )
                                    , (if pathIsLeft then coParentShape else innerShape)
                                        |> move ( 4 * letterWidth
                                                            , -letterHeight
                                                                - (if pathIsLeft then innerHeight else coParentHeight) )
                                    , renderText clrBool ")" |> move ( 0, -letterHeight - innerHeight - coParentHeight )
                                    ]
                                , 2 * letterHeight + coParentHeight + innerHeight
                                )
                                subPath
    in
        case path of
            EBTop -> (innerShape,innerHeight)
            EBOr1 leftPath right -> twoArg "or" True leftPath right
            EBOr2 left rightPath -> twoArg "or" False rightPath left
            EBAnd1 leftPath right -> twoArg "and" True leftPath right
            EBAnd2 left rightPath -> twoArg "and" False rightPath left
            EBNot subPath ->
                prettyWrapBool  ( group
                                    [ renderText clrBool <| "( not "
                                    , innerShape
                                        |> move ( 4 * letterWidth, -letterHeight )
                                    , renderText clrBool ")" |> move ( 0, -letterHeight - innerHeight )
                                    ]
                                , 2 * letterHeight + innerHeight
                                )
                                subPath

            EIIf0 condPath left right ->
                let
                    (leftShape,leftHeight) = prettyInt left
                    (rightShape,rightHeight) = prettyInt right
                in
                    prettyWrapInt  ( mkIf clrInt (innerShape,innerHeight) (prettyInt left) (prettyInt right)
                                    )
                                    condPath

prettyInt :
    ElmInt ->
        ( Shape Msg -- Shapes to draw this person
        , Float -- height of this component
        )
prettyInt ei =
    case ei of
        IntConst i ->   (renderText clrInt (String.fromInt i)
                        , letterHeight
                        )
        IntHole ->  ( group [ rect 12 letterHeight |> filled clrInt |> move (6,1)
                            , renderText black " ✍ "
                            ]
                    , letterHeight
                    )
        IntAdd left right -> mkBinary clrInt "(+)" (prettyInt left) (prettyInt right)
        IntMult left right -> mkBinary clrInt "(*)" (prettyInt left) (prettyInt right)
        IntIf cond left right -> mkIf clrInt (prettyBool cond) (prettyInt left) (prettyInt right)

prettyFloat :
    ElmFloat ->
        ( Shape Msg -- Shapes to draw this person
        , Float -- height of this component
        )
prettyFloat ef =
    case ef of
        FloatConst i ->   (renderText clrFloat (String.fromFloat i)
                        , letterHeight
                        )
        FloatHole ->  ( group [ rect 12 letterHeight |> filled clrFloat |> move (6,1)
                            , renderText black " ✍ "
                            ]
                    , letterHeight
                    )
        FloatAdd left right -> mkBinary clrFloat "(+)" (prettyFloat left) (prettyFloat right)
        FloatMult left right -> mkBinary clrFloat "(*)" (prettyFloat left) (prettyFloat right)


prettyBool eb =
    case eb of
        BoolConst b ->  (renderText clrBool (if b then "True" else "False")
                        , letterHeight
                        )
        BoolHole -> ( group [ rect 12 letterHeight |> filled clrBool |> move (6,1)
                            , renderText black " ✍ "
                            ]
                    , letterHeight
                    )
        BoolOr left right -> mkBinary clrBool "or" (prettyBool left) (prettyBool right)
        BoolAnd left right -> mkBinary clrBool "and" (prettyBool left) (prettyBool right)
        BoolNot left -> mkUnary clrBool "not" (prettyBool left)
        IntGT left right -> mkBinary clrBool "(>)" (prettyInt left) (prettyInt right)

renderText clr txt =
    text txt |> fixedwidth |> size 5
        |> filled clr

clrBool = rgb 0 0 200
clrInt = rgb 100 100 0
clrFloat = rgb 100 0 100
clrPair = rgb 200 0 200

letterWidth =
    3


letterHeight =
    5

type State
    = Cursing
    | Popover (Float,Float)


type alias Model =
    { widget0 : Widget.Model -- contains state about display of widget
    , keyDown : String
    , keyUp : String
    , ctrlDown : Bool
    , shiftDown : Bool
    , altDown : Bool
    , metaDown : Bool
    , location : Location
    , zoom : Float
    , pan : (Float,Float)
    , state : State
    , undos : List Location
    , redos : List Location
    , scratch : List Wrapper
    , debug : String
    }


type Msg
    = UrlChange Url.Url
    | ClickedLink Browser.UrlRequest
    | Tick Float
    | VisibilityChange Browser.Visibility
    | WindowResize Int Int
    | Widget0Msg Widget.Msg
    | KeyDown ( Int, ( Bool, Bool ), ( Bool, Bool ) )
    | KeyUp Int


init : Flags -> Url.Url -> Navigation.Key -> ( Model, Cmd Msg )
init _ _ _ =
    let
        ( wstate0, wcmd0 ) =
            Widget.init iconWidth iconHeight "widget0"

        --tree0 = IntIf (BoolOr (BoolConst False) BoolHole) (IntAdd (IntConst 1) (IntConst 1)) IntHole
        tree0 = (IntAdd (IntConst 3) (IntAdd (IntConst 1) (IntConst 2)))
        model =
            { widget0 = wstate0
            , keyDown = ""
            , keyUp = ""
            , metaDown = False
            , shiftDown = False
            , altDown = False
            , ctrlDown = False
            , location = LocInt tree0 EITop
            , zoom = 1
            , pan = (0,0)
            , state = Cursing
            , undos = []
            , redos = []
            , scratch = []
            , debug = ""
            }
    in
    ( model, Cmd.batch [ Cmd.map Widget0Msg wcmd0 ] )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.batch
        [ Browser.onAnimationFrame (\posix -> Tick ((Time.posixToMillis posix |> toFloat) * 0.001))
        , Browser.onResize WindowResize
        , Browser.onVisibilityChange VisibilityChange
        , Browser.onKeyDown (Decoder.map KeyDown keyDecoder)
        , Browser.onKeyUp (Decoder.map KeyUp (Decoder.field "keyCode" Decoder.int))

        -- FIXME, this needs to be attached, Html.Events.preventDefaultOn "keyDown" (Decoder.map ( \ msg -> (msg,True)) (Decoder.field "keyCode" Decoder.int))
        ]


keyDecoder : Decoder.Decoder ( Int, ( Bool, Bool ), ( Bool, Bool ) )
keyDecoder =
    Decoder.map5 (\a -> \b -> \c -> \d -> \e -> ( a, ( b, c ), ( d, e ) ))
        (Decoder.field "keyCode" Decoder.int)
        (Decoder.field "metaKey" Decoder.bool)
        (Decoder.field "shiftKey" Decoder.bool)
        (Decoder.field "ctrlKey" Decoder.bool)
        (Decoder.field "altKey" Decoder.bool)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Widget0Msg wMsg ->
            let
                ( newWState, wCmd ) =
                    Widget.update wMsg model.widget0
            in
            ( { model | widget0 = newWState }
            , Cmd.map Widget0Msg wCmd
            )

        Tick _ ->
            ( model, Cmd.none )

        ClickedLink _ ->
            ( model, Cmd.none )

        UrlChange _ ->
            ( model, Cmd.none )

        VisibilityChange _ ->
            ( model, Cmd.none )

        WindowResize _ _ ->
            ( model, Cmd.none )

        KeyDown ( key, ( isMeta, isShift ), ( isCtrl, isAlt ) ) ->
            let
                (newLocation,newUndos,newRedos) =
                    case key of
                        38 -> (cursorUp model.location, model.undos, model.redos)
                        37 -> (cursorLeft model.location, model.undos, model.redos)
                        39 -> (cursorRight model.location, model.undos, model.redos)
                        40 -> (cursorDown model.location, model.undos, model.redos)
                        8 -> (insertHole model.location, model.location :: model.undos, model.redos) -- FIXME:  don't save if no change
                        90 -> if isMeta then
                                    if isAlt then
                                        (model.location,model.undos,model.redos)
                                    else if isShift then
                                        case model.redos of
                                            redo :: rest -> (redo,model.location :: model.undos,rest)
                                            [] -> (model.location,model.undos,model.redos)
                                    else
                                        case model.undos of
                                            undo :: rest -> (undo,rest,model.location :: model.redos)
                                            [] -> (model.location,model.undos,model.redos)
                                else
                                    (model.location,model.undos,model.redos)
                        _ -> (model.location, model.undos, model.redos)

            in
                ( { model
                    | keyDown = String.fromInt key
                    , metaDown = isMeta
                    , shiftDown = isShift
                    , ctrlDown = isCtrl
                    , altDown = isAlt
                    , location = newLocation
                    , undos = newUndos
                    , redos = newRedos
                    , state = if key == 13 && not isMeta && not isShift && not isCtrl && not isAlt then
                                case model.state of
                                    Cursing -> Popover (0,0)
                                    Popover _ -> Cursing
                              else
                                model.state
                    , debug = if key == 90 && isMeta then "undo" else model.debug
                }
                , Cmd.none
                )

        KeyUp key ->
            ( { model
                | keyUp = String.fromInt key
                , metaDown = False
                , shiftDown = False
                , ctrlDown = False
                , altDown = False
              }
            , Cmd.none
            )

--arrowUp, arrowDown, arrowLeft, arrowRight : Int
arrowUp = 38
arrowLeft = 37
arrowRight = 39
arrowDown = 40

basicOps loc =
    case loc of
        LocBool _ _ -> List.map WrapBool [BoolConst True, BoolConst False, BoolOr BoolHole BoolHole, BoolAnd BoolHole BoolHole]
        LocInt _ _ -> []

filterInsertable loc scratch =
    List.concatMap (filterWrapped loc) scratch

filterWrapped loc wrapped =
    case (loc,wrapped) of
        (LocBool _ _, WrapBool _) -> [wrapped]
        (LocInt _ _, WrapInt _) -> [wrapped]
        _ -> []

prettyWrapped wrapped =
    case wrapped of
        WrapBool val -> prettyBool val
        WrapInt val -> prettyInt val

{- FIXME what is this for?

   resetViewport : Cmd Msg
   resetViewport =
     Task.perform (\_ -> NoOp) (Dom.setViewport 0 0)
-}


iconWidth : Float
iconWidth =
    196


iconHeight : Float
iconHeight =
    128


view : Model -> Browser.Document Msg
view model =
    { title = "Arithmetic Expression"
    , body =
        [ Html.node "link"
            [ Html.attribute "rel" "stylesheet"
            , Html.href "https://documents.mcmaster.ca/www/cdn/css/1.0/mcm-bw.css"
            ]
            []
        , Html.div []
            [ Widget.view model.widget0
                [ prettyLocation model.location
                    |> Tuple.first
                    |> scale 0.25
                    |> move ( -60, 0 )
                , case model.state of
                    Cursing -> group []
                    Popover _ ->
                        group
                            ( (roundedRect 50 20 5 |> filled (rgba 255 255 255 0.5))
                            :: ( (basicOps model.location) ++ (filterInsertable model.location model.scratch)
                                    |> List.map prettyWrapped
                                    |> List.foldr ( \ (shapes,height) (shapesSoFar,heightSoFar) -> ((shapes |> move (0,heightSoFar))::shapesSoFar,height+heightSoFar))
                                            ([],0)
                                    |> Tuple.first
                               )
                            )
                , text
                    ((if model.metaDown then
                        "cmd-"

                      else
                        ""
                     )
                        ++ (if model.ctrlDown then
                                "ctrl-"

                            else
                                ""
                           )
                        ++ (if model.shiftDown then
                                "shift-"

                            else
                                ""
                           )
                        ++ (if model.altDown then
                                "alt-"

                            else
                                ""
                           )
                        ++ model.keyDown
                    )
                    |> centered
                    |> filled purple
                    |> move ( 0, -20 )
                , text ("undos " ++ Debug.toString model.undos) |> size 4 |> filled purple |> move ( -96, 20 )
                , text ("redos " ++ Debug.toString model.redos) |> size 4 |> filled purple |> move ( -96, 25 )
                , text ("debug " ++ model.debug) |> size 4 |> filled purple |> move ( -96, 30 )
                ]
            ]
        ]
    }


type alias Flags =
    {}


main : Program Flags Model Msg
main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        , onUrlRequest = ClickedLink
        , onUrlChange = UrlChange
        }
