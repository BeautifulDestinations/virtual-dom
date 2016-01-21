
{-# LANGUAGE OverloadedStrings #-}

module Web.VirtualDom.Html
    ( address
    , article
    , body
    , footer
    , header
    , h1
    , h2
    , h3
    , h4
    , h5
    , h6
    -- , hgroup
    , nav
    , section
    , dd
    , div
    , dl
    , dt
    , figcaption
    , figure
    , hr
    , li
    -- , main
    , ol
    , p
    , pre
    , ul
    , a
    , abbr
    , b
    , bdi
    , br
    , cite
    , code
    , dfn
    , em
    , i
    , kbd
    , mark
    , q
    , rp
    , rt
    -- , rtc
    , ruby
    , s
    , samp
    , small
    , span
    , strong
    , sub
    , sup
    , time
    , u
    , var
    , wbr
    -- , area
    , audio
    , img
    -- , map
    , track
    , video
    , embed
    , iframe
    , object
    , param
    , source
    , canvas
    -- , noscript
    -- , script
    , del
    , ins
    , caption
    , col
    , colgroup
    , table
    , tbody
    , td
    , tfoot
    , th
    , thead
    , tr
    , button
    , datalist
    , fieldset
    , form
    , input
    , keygen
    , label
    , legend
    , meter
    , optgroup
    , option
    , output
    , progress
    , select
    , textarea
    , details
    -- , dialog
    , menu
    , menuitem
    , summary
    -- , content
    -- , element
    -- , shadow
    -- , template
    )
    where

import Prelude hiding (div, span)
import Data.JSString hiding (span)
import qualified Web.VirtualDom as VirtualDom

type Html = VirtualDom.Node
type Property = VirtualDom.Property

node :: JSString -> [Property] -> [Html] -> Html
node =
    VirtualDom.node

{-| Just put plain text in the DOM. It will escape the JSString so that it appears
exactly as you specify.
      text "Hello World!"
-}
text :: JSString -> Html
text =
    VirtualDom.text


-- SECTIONS

{-| Represents the content of an HTML document. There is only one `body`
element in a document.
-}
body :: [Property] -> [Html] -> Html
body =
  node "body"


{-| Defines a section in a document.
-}
section :: [Property] -> [Html] -> Html
section =
  node "section"


{-| Defines a section that contains only navigation links.
-}
nav :: [Property] -> [Html] -> Html
nav =
  node "nav"


{-| Defines self-contained content that could exist independently of the rest
of the content.
-}
article :: [Property] -> [Html] -> Html
article =
  node "article"


{-| Defines some content loosely related to the page content. If it is removed,
the remaining content still makes sense.
-}
aside :: [Property] -> [Html] -> Html
aside =
  node "aside"


{-|-}
h1 :: [Property] -> [Html] -> Html
h1 =
  node "h1"


{-|-}
h2 :: [Property] -> [Html] -> Html
h2 =
  node "h2"


{-|-}
h3 :: [Property] -> [Html] -> Html
h3 =
  node "h3"


{-|-}
h4 :: [Property] -> [Html] -> Html
h4 =
  node "h4"


{-|-}
h5 :: [Property] -> [Html] -> Html
h5 =
  node "h5"


{-|-}
h6 :: [Property] -> [Html] -> Html
h6 =
  node "h6"


{-| Defines the header of a page or section. It often contains a logo, the
title of the web site, and a navigational table of content.
-}
header :: [Property] -> [Html] -> Html
header =
  node "header"


{-| Defines the footer for a page or section. It often contains a copyright
notice, some links to legal information, or addresses to give feedback.
-}
footer :: [Property] -> [Html] -> Html
footer =
  node "footer"


{-| Defines a section containing contact information. -}
address :: [Property] -> [Html] -> Html
address =
  node "address"


{-| Defines the main or important content in the document. There is only one
`main` element in the document.
-}
main' :: [Property] -> [Html] -> Html
main' =
  node "main"


-- GROUPING CONTENT

{-| Defines a portion that should be displayed as a paragraph. -}
p :: [Property] -> [Html] -> Html
p =
  node "p"


{-| Represents a thematic break between paragraphs of a section or article or
any longer content.
-}
hr :: [Property] -> [Html] -> Html
hr =
  node "hr"


{-| Indicates that its content is preformatted and that this format must be
preserved.
-}
pre :: [Property] -> [Html] -> Html
pre =
  node "pre"


{-| Represents a content that is quoted from another source. -}
blockquote :: [Property] -> [Html] -> Html
blockquote =
  node "blockquote"


{-| Defines an ordered list of items. -}
ol :: [Property] -> [Html] -> Html
ol =
  node "ol"


{-| Defines an unordered list of items. -}
ul :: [Property] -> [Html] -> Html
ul =
  node "ul"


{-| Defines a item of an enumeration list. -}
li :: [Property] -> [Html] -> Html
li =
  node "li"


{-| Defines a definition list, that is, a list of terms and their associated
definitions.
-}
dl :: [Property] -> [Html] -> Html
dl =
  node "dl"


{-| Represents a term defined by the next `dd`. -}
dt :: [Property] -> [Html] -> Html
dt =
  node "dt"


{-| Represents the definition of the terms immediately listed before it. -}
dd :: [Property] -> [Html] -> Html
dd =
  node "dd"


{-| Represents a figure illustrated as part of the document. -}
figure :: [Property] -> [Html] -> Html
figure =
  node "figure"


{-| Represents the legend of a figure. -}
figcaption :: [Property] -> [Html] -> Html
figcaption =
  node "figcaption"


{-| Represents a generic container with no special meaning. -}
div :: [Property] -> [Html] -> Html
div =
  node "div"


-- TEXT LEVEL SEMANTIC

{-| Represents a hyperlink, linking to another resource. -}
a :: [Property] -> [Html] -> Html
a =
  node "a"


{-| Represents emphasized text, like a stress accent. -}
em :: [Property] -> [Html] -> Html
em =
  node "em"


{-| Represents especially important text. -}
strong :: [Property] -> [Html] -> Html
strong =
  node "strong"


{-| Represents a side comment, that is, text like a disclaimer or a
copyright, which is not essential to the comprehension of the document.
-}
small :: [Property] -> [Html] -> Html
small =
  node "small"


{-| Represents content that is no longer accurate or relevant. -}
s :: [Property] -> [Html] -> Html
s =
  node "s"


{-| Represents the title of a work. -}
cite :: [Property] -> [Html] -> Html
cite =
  node "cite"


{-| Represents an inline quotation. -}
q :: [Property] -> [Html] -> Html
q =
  node "q"


{-| Represents a term whose definition is contained in its nearest ancestor
content.
-}
dfn :: [Property] -> [Html] -> Html
dfn =
  node "dfn"


{-| Represents an abbreviation or an acronym; the expansion of the
abbreviation can be represented in the title Property.
-}
abbr :: [Property] -> [Html] -> Html
abbr =
  node "abbr"


{-| Represents a date and time value; the machine-readable equivalent can be
represented in the datetime Property.
-}
time :: [Property] -> [Html] -> Html
time =
  node "time"


{-| Represents computer code. -}
code :: [Property] -> [Html] -> Html
code =
  node "code"


{-| Represents a variable. Specific cases where it should be used include an
actual mathematical expression or programming context, an identifier
representing a constant, a symbol identifying a physical quantity, a function
parameter, or a mere placeholder in prose.
-}
var :: [Property] -> [Html] -> Html
var =
  node "var"


{-| Represents the output of a program or a computer. -}
samp :: [Property] -> [Html] -> Html
samp =
  node "samp"


{-| Represents user input, often from the keyboard, but not necessarily; it
may represent other input, like transcribed voice commands.
-}
kbd :: [Property] -> [Html] -> Html
kbd =
  node "kbd"


{-| Represent a subscript. -}
sub :: [Property] -> [Html] -> Html
sub =
  node "sub"


{-| Represent a superscript. -}
sup :: [Property] -> [Html] -> Html
sup =
  node "sup"


{-| Represents some text in an alternate voice or mood, or at least of
different quality, such as a taxonomic designation, a technical term, an
idiomatic phrase, a thought, or a ship name.
-}
i :: [Property] -> [Html] -> Html
i =
  node "i"


{-| Represents a text which to which attention is drawn for utilitarian
purposes. It doesn't convey extra importance and doesn't imply an alternate
voice.
-}
b :: [Property] -> [Html] -> Html
b =
  node "b"


{-| Represents a non-textual annoatation for which the conventional
presentation is underlining, such labeling the text as being misspelt or
labeling a proper name in Chinese text.
-}
u :: [Property] -> [Html] -> Html
u =
  node "u"


{-| Represents text highlighted for reference purposes, that is for its
relevance in another context.
-}
mark :: [Property] -> [Html] -> Html
mark =
  node "mark"


{-| Represents content to be marked with ruby annotations, short runs of text
presented alongside the text. This is often used in conjunction with East Asian
language where the annotations act as a guide for pronunciation, like the
Japanese furigana.
-}
ruby :: [Property] -> [Html] -> Html
ruby =
  node "ruby"


{-| Represents the text of a ruby annotation. -}
rt :: [Property] -> [Html] -> Html
rt =
  node "rt"


{-| Represents parenthesis around a ruby annotation, used to display the
annotation in an alternate way by browsers not supporting the standard display
for annotations.
-}
rp :: [Property] -> [Html] -> Html
rp =
  node "rp"


{-| Represents text that must be isolated from its surrounding for
bidirectional text formatting. It allows embedding a span of text with a
different, or unknown, directionality.
-}
bdi :: [Property] -> [Html] -> Html
bdi =
  node "bdi"


{-| Represents the directionality of its children, in order to explicitly
override the Unicode bidirectional algorithm.
-}
bdo :: [Property] -> [Html] -> Html
bdo =
  node "bdo"


{-| Represents text with no specific meaning. This has to be used when no other
text-semantic element conveys an adequate meaning, which, in this case, is
often brought by global Propertys like `class`, `lang`, or `dir`.
-}
span :: [Property] -> [Html] -> Html
span =
  node "span"


{-| Represents a line break. -}
br :: [Property] -> [Html] -> Html
br =
  node "br"


{-| Represents a line break opportunity, that is a suggested point for
wrapping text in order to improve readability of text split on several lines.
-}
wbr :: [Property] -> [Html] -> Html
wbr =
  node "wbr"


-- EDITS

{-| Defines an addition to the document. -}
ins :: [Property] -> [Html] -> Html
ins =
  node "ins"


{-| Defines a removal from the document. -}
del :: [Property] -> [Html] -> Html
del =
  node "del"


-- EMBEDDED CONTENT

{-| Represents an image. -}
img :: [Property] -> [Html] -> Html
img =
  node "img"


{-| Embedded an HTML document. -}
iframe :: [Property] -> [Html] -> Html
iframe =
  node "iframe"


{-| Represents a integration point for an external, often non-HTML,
application or interactive content.
-}
embed :: [Property] -> [Html] -> Html
embed =
  node "embed"


{-| Represents an external resource, which is treated as an image, an HTML
sub-document, or an external resource to be processed by a plug-in.
-}
object :: [Property] -> [Html] -> Html
object =
  node "object"


{-| Defines parameters for use by plug-ins invoked by `object` elements. -}
param :: [Property] -> [Html] -> Html
param =
  node "param"


{-| Represents a video, the associated audio and captions, and controls. -}
video :: [Property] -> [Html] -> Html
video =
  node "video"


{-| Represents a sound or audio stream. -}
audio :: [Property] -> [Html] -> Html
audio =
  node "audio"


{-| Allows authors to specify alternative media resources for media elements
like `video` or `audio`.
-}
source :: [Property] -> [Html] -> Html
source =
  node "source"


{-| Allows authors to specify timed text track for media elements like `video`
or `audio`.
-}
track :: [Property] -> [Html] -> Html
track =
  node "track"


{-| Represents a bitmap area for graphics rendering. -}
canvas :: [Property] -> [Html] -> Html
canvas =
  node "canvas"


{-- TODO: get a better way to disambiguate imports
          then expose these functions
{-| In conjunction with `area`, defines an image map. -}
map :: [Property] -> [Html] -> Html
map =
node "map"
{-| In conjunction with `map`, defines an image map. -}
area :: [Property] -> [Html] -> Html
area =
node "area"
--}

{-| Defines an embedded vectorial image. -}
svg :: [Property] -> [Html] -> Html
svg =
  node "svg"


{-| Defines a mathematical formula. -}
math :: [Property] -> [Html] -> Html
math =
  node "math"


-- TABULAR DATA

{-| Represents data with more than one dimension. -}
table :: [Property] -> [Html] -> Html
table =
  node "table"


{-| Represents the title of a table. -}
caption :: [Property] -> [Html] -> Html
caption =
  node "caption"


{-| Represents a set of one or more columns of a table. -}
colgroup :: [Property] -> [Html] -> Html
colgroup =
  node "colgroup"


{-| Represents a column of a table. -}
col :: [Property] -> [Html] -> Html
col =
  node "col"


{-| Represents the block of rows that describes the concrete data of a table.
-}
tbody :: [Property] -> [Html] -> Html
tbody =
  node "tbody"


{-| Represents the block of rows that describes the column labels of a table.
-}
thead :: [Property] -> [Html] -> Html
thead =
  node "thead"


{-| Represents the block of rows that describes the column summaries of a table.
-}
tfoot :: [Property] -> [Html] -> Html
tfoot =
  node "tfoot"


{-| Represents a row of cells in a table. -}
tr :: [Property] -> [Html] -> Html
tr =
  node "tr"


{-| Represents a data cell in a table. -}
td :: [Property] -> [Html] -> Html
td =
  node "td"


{-| Represents a header cell in a table. -}
th :: [Property] -> [Html] -> Html
th =
  node "th"


-- FORMS

{-| Represents a form, consisting of controls, that can be submitted to a
server for processing.
-}
form :: [Property] -> [Html] -> Html
form =
  node "form"


{-| Represents a set of controls. -}
fieldset :: [Property] -> [Html] -> Html
fieldset =
  node "fieldset"


{-| Represents the caption for a `fieldset`. -}
legend :: [Property] -> [Html] -> Html
legend =
  node "legend"


{-| Represents the caption of a form control. -}
label :: [Property] -> [Html] -> Html
label =
  node "label"


{-| Represents a typed data field allowing the user to edit the data. -}
input :: [Property] -> [Html] -> Html
input =
  node "input"


{-| Represents a button. -}
button :: [Property] -> [Html] -> Html
button =
  node "button"


{-| Represents a control allowing selection among a set of options. -}
select :: [Property] -> [Html] -> Html
select =
  node "select"


{-| Represents a set of predefined options for other controls. -}
datalist :: [Property] -> [Html] -> Html
datalist =
  node "datalist"


{-| Represents a set of options, logically grouped. -}
optgroup :: [Property] -> [Html] -> Html
optgroup =
  node "optgroup"


{-| Represents an option in a `select` element or a suggestion of a `datalist`
element.
-}
option :: [Property] -> [Html] -> Html
option =
  node "option"


{-| Represents a multiline text edit control. -}
textarea :: [Property] -> [Html] -> Html
textarea =
  node "textarea"


{-| Represents a key-pair generator control. -}
keygen :: [Property] -> [Html] -> Html
keygen =
  node "keygen"


{-| Represents the result of a calculation. -}
output :: [Property] -> [Html] -> Html
output =
  node "output"


{-| Represents the completion progress of a task. -}
progress :: [Property] -> [Html] -> Html
progress =
  node "progress"


{-| Represents a scalar measurement (or a fractional value), within a known
range.
-}
meter :: [Property] -> [Html] -> Html
meter =
  node "meter"


-- INTERACTIVE ELEMENTS

{-| Represents a widget from which the user can obtain additional information
or controls.
-}
details :: [Property] -> [Html] -> Html
details =
  node "details"


{-| Represents a summary, caption, or legend for a given `details`. -}
summary :: [Property] -> [Html] -> Html
summary =
  node "summary"


{-| Represents a command that the user can invoke. -}
menuitem :: [Property] -> [Html] -> Html
menuitem =
  node "menuitem"


{-| Represents a list of commands. -}
menu :: [Property] -> [Html] -> Html
menu =
  node "menu"
