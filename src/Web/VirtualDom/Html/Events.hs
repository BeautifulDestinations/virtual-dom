
{-# LANGUAGE JavaScriptFFI, CPP, OverloadedStrings #-}

module Web.VirtualDom.Html.Events
    ( Event(..)
    -- * Subscribing for events
    , onClick
    , onChange
    , onKeyup
    , onSubmit
    , onDragstart
    , onDragover
    , onDragdrop
    , onDragend
    , onDragenter
    , onDragleave

    , click
    , mousemove
    , change
    , keyup
    , submit
    , dragstart
    , dragover
    , dragdrop
    , dragend
    , dragenter
    , dragleave

    -- * Inspecting Events
    -- ** General
    , stopPropagation
    , stopImmediatePropagation
    , preventDefault
    , value
    , files
    , checked

    , getDataTransfer
    , setDataTransfer
    , clearDataTransfer
    , effectAllowed
    , dropEffect
    , setDragImage
    ) where

import GHCJS.Types
import Data.JSString

import JavaScript.Web.File (File(..), name)
import JavaScript.Web.XMLHttpRequest (FormDataVal(..))

import Web.VirtualDom.Html (Property)
import qualified Web.VirtualDom as VirtualDom


newtype Event = Event JSVal

foreign import javascript unsafe "$1.stopPropagation()"
  stopPropagation :: Event -> IO ()
-- stopPropagation = er $ \e -> [jsu_| `e.stopPropagation(); |]
-- {-# INLINE stopPropagation #-}

foreign import javascript unsafe "$1.stopImmediatePropagation()"
  stopImmediatePropagation :: Event -> IO ()
-- stopImmediatePropagation = er $ \e -> [jsu_| `e.stopImmediatePropagation(); |]
-- {-# INLINE stopImmediatePropagation #-}

foreign import javascript unsafe "$1.preventDefault()"
  preventDefault :: Event -> IO ()
-- preventDefault = er $ \e -> [jsu_| `e.preventDefault(); |]
-- {-# INLINE preventDefault #-}

-- ctrlKey :: KeyModEvent_ a => a -> Bool
-- ctrlKey = er $ \e -> [jsu'| `e.ctrlKey |]
-- {-# INLINE ctrlKey #-}
--
-- metaKey :: KeyModEvent_ a => a -> Bool
-- metaKey = er $ \e -> [jsu'| `e.ctrlKey |]
-- {-# INLINE metaKey #-}
--
-- shiftKey :: KeyModEvent_ a => a -> Bool
-- shiftKey = er $ \e -> [jsu'| `e.ctrlKey |]
-- {-# INLINE shiftKey #-}
--
-- key :: KeyboardEvent -> JSString
-- key = er $ \e -> [jsu'| `e.key |]
-- {-# INLINE key #-}
--
-- button :: MouseEvent_ a => a -> Int
-- button = er $ \e -> [jsu'| `e.button |]
-- {-# INLINE button #-}
--
-- buttons :: MouseEvent_ a => a -> Int
-- buttons = er $ \e -> [jsu'| `e.buttons |]
-- {-# INLINE buttons #-}
--
-- deltaX :: WheelEvent -> Double
-- deltaX = er $ \e -> [jsu'| `e.deltaX |]
-- {-# INLINE deltaX #-}
--
-- deltaY :: WheelEvent -> Double
-- deltaY = er $ \e -> [jsu'| `e.deltaY |]
-- {-# INLINE deltaY #-}
--
-- deltaZ :: WheelEvent -> Double
-- deltaZ = er $ \e -> [jsu'| `e.deltaZ |]
-- {-# INLINE deltaZ #-}
--
-- deltaMode :: WheelEvent -> Double
-- deltaMode = er $ \e -> [jsu'| `e.deltaMode |]
-- {-# INLINE deltaMode #-}
--
-- clientX :: MouseEvent -> Int
-- clientX = er $ \e -> [jsu'| `e.clientX|0 |]
-- {-# INLINE clientX #-}
--
-- clientY :: MouseEvent -> Int
-- clientY = er $ \e -> [jsu'| `e.clientY|0 |]
-- {-# INLINE clientY #-}

onClick :: (Event -> IO ()) -> Property
onClick = onE Event "click"

onChange :: (Event -> IO ()) -> Property
onChange = onE Event "change"

onKeyup :: (Event -> IO ()) -> Property
onKeyup = onE Event "keyup"

onSubmit :: (Event -> IO ()) -> Property
onSubmit = onE Event "submit"

onDragstart :: (Event -> IO ()) -> Property
onDragstart = onE Event "dragstart"

onDragover :: (Event -> IO ()) -> Property
onDragover = onE Event "dragover"

onDragenter :: (Event -> IO ()) -> Property
onDragenter = onE Event "dragenter"

onDragleave :: (Event -> IO ()) -> Property
onDragleave = onE Event "dragleave"

onDragdrop :: (Event -> IO ()) -> Property
onDragdrop = onE Event "drop"

onDragend :: (Event -> IO ()) -> Property
onDragend = onE Event "dragend"

-- Alternate convention:

dragstart :: (Event -> IO ()) -> Property
dragstart = onE Event "dragstart"

dragover :: (Event -> IO ()) -> Property
dragover = onE Event "dragover"

dragenter :: (Event -> IO ()) -> Property
dragenter = onE Event "dragenter"

dragleave :: (Event -> IO ()) -> Property
dragleave = onE Event "dragleave"

dragdrop :: (Event -> IO ()) -> Property
dragdrop = onE Event "drop"

dragend :: (Event -> IO ()) -> Property
dragend = onE Event "dragend"

click :: (Event -> IO ()) -> Property
click = onE Event "click"

change :: (Event -> IO ()) -> Property
change = onE Event "change"

keyup :: (Event -> IO ()) -> Property
keyup = onE Event "keyup"

submit :: (Event -> IO ()) -> Property
submit = onE Event "submit"

mousemove :: (Event -> IO ()) -> Property
mousemove = onE Event "mousemove"


newtype FileList = FileList JSVal

foreign import javascript unsafe "$1.target.files"
  targetFiles :: Event -> FileList

foreign import javascript unsafe "typeof $1 !== 'undefined'"
  fileListIsntNoting :: FileList -> Bool

foreign import javascript unsafe "$1.length"
  fileListLength :: FileList -> Int

foreign import javascript unsafe "$1[$2]"
  fileListItem :: FileList -> Int -> File

files :: Event -> Maybe [FormDataVal]
files e = case justFiles of
  False -> Nothing
  True  -> Just $ fmap ((\f -> FileVal f (Just $ name f)) . fileListItem fl) [0..pred len]
  where
    fl        = targetFiles e
    justFiles = fileListIsntNoting fl
    len       = fileListLength fl

-- or just Event -> JSString
foreign import javascript unsafe "$1.target.value"
  value :: Event -> JSString

foreign import javascript unsafe "$1.target.checked"
  checked :: Event -> Bool

foreign import javascript unsafe "$1.dataTransfer.getData($2)"
  getDataTransfer :: Event -> JSString -> JSString

foreign import javascript unsafe "$1.dataTransfer.setData($2, $3)"
  setDataTransfer :: Event -> JSString -> JSString -> IO ()

foreign import javascript unsafe "$1.dataTransfer.clearData()"
  clearDataTransfer :: Event -> IO ()

foreign import javascript unsafe "$1.dataTransfer.effectAllowed = $2"
  effectAllowed :: Event -> JSString -> IO ()

foreign import javascript unsafe "$1.dataTransfer.dropEffect = $2"
  dropEffect :: Event -> JSString -> IO ()

foreign import javascript unsafe "(function(){var x=new Image($3, $4); x.style.width=$3+'px'; x.style.height=$4+'px'; x.src=$2; $1.dataTransfer.setDragImage(x, ($3 / 2), ($4 / 2));}())"
  setDragImage :: Event -> JSString -> Int -> Int -> IO ()

onE e n = VirtualDom.on n . contramapS e
  where
    contramapS f k x = k (f x)
