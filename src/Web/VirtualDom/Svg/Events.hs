
{-# LANGUAGE JavaScriptFFI, CPP, OverloadedStrings #-}

module Web.VirtualDom.Svg.Events
    ( Event
    , onBegin
    , onEnd
    , onRepeat
    , onAbort
    , onError
    , onResize
    , onScroll
    , onLoad
    , onUnload
    , onZoom
    , onActivate
    , onClick
    , onFocusIn
    , onFocusOut
    , onMouseDown
    , onMouseMove
    , onMouseOut
    , onMouseOver
    , onMouseUp
    )
    where

import GHCJS.Types
import Data.JSString

import Web.VirtualDom.Svg (Property)
import qualified Web.VirtualDom as VirtualDom


newtype Event = Event JSVal

-- Animation event attributes


{-|-}
onBegin :: (Event -> IO ()) -> Property
onBegin =
  onE Event "begin"


{-|-}
onEnd :: (Event -> IO ()) -> Property
onEnd =
  onE Event "end"


{-|-}
onRepeat :: (Event -> IO ()) -> Property
onRepeat =
  onE Event "repeat"


-- Document event attributes


{-|-}
onAbort :: (Event -> IO ()) -> Property
onAbort =
  onE Event "abort"


{-|-}
onError :: (Event -> IO ()) -> Property
onError =
  onE Event "error"


{-|-}
onResize :: (Event -> IO ()) -> Property
onResize =
  onE Event "resize"


{-|-}
onScroll :: (Event -> IO ()) -> Property
onScroll =
  onE Event "scroll"


{-|-}
onLoad :: (Event -> IO ()) -> Property
onLoad =
  onE Event "load"


{-|-}
onUnload :: (Event -> IO ()) -> Property
onUnload =
  onE Event "unload"


{-|-}
onZoom :: (Event -> IO ()) -> Property
onZoom =
  onE Event "zoom"


-- Graphical event attributes


{-|-}
onActivate :: (Event -> IO ()) -> Property
onActivate =
  onE Event "activate"


{-|-}
onClick :: (Event -> IO ()) -> Property
onClick =
  onE Event "click"


{-|-}
onFocusIn :: (Event -> IO ()) -> Property
onFocusIn =
  onE Event "focusin"


{-|-}
onFocusOut :: (Event -> IO ()) -> Property
onFocusOut =
  onE Event "focusout"


{-|-}
onMouseDown :: (Event -> IO ()) -> Property
onMouseDown =
  onE Event "mousedown"


{-|-}
onMouseMove :: (Event -> IO ()) -> Property
onMouseMove =
  onE Event "mousemove"


{-|-}
onMouseOut :: (Event -> IO ()) -> Property
onMouseOut =
  onE Event "mouseout"


{-|-}
onMouseOver :: (Event -> IO ()) -> Property
onMouseOver =
  onE Event "mouseover"


{-|-}
onMouseUp :: (Event -> IO ()) -> Property
onMouseUp =
  onE Event "mouseup"

onE e n = VirtualDom.on n . contramapS e
  where
    contramapS f k x = k (f x)
