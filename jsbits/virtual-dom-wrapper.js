
var VNode = require('virtual-dom/vnode/vnode');
var VText = require('virtual-dom/vnode/vtext');
var diff = require('virtual-dom/vtree/diff');
var patch = require('virtual-dom/vdom/patch');
var createElement = require('virtual-dom/vdom/create-element');
var isHook = require("virtual-dom/vnode/is-vhook");

// type Node
// type Property

// node : String -> List Property -> List Node -> Node
function node(tagName, properties, children, key, namespace) {
  return new VNode(tagName, properties, children, key, namespace);
}

// text : JSString -> Node
function text(string) {
		return new VText(string);
}




module.exports = {
  VNode : VNode,
  VText : VText,
  diff : diff,
  patch : patch,
  createElement : createElement,
  isHook : isHook,

  node : node,
  text : text,
  // data Options =
  //     { stopPropagation : Bool
  //     , preventDefault : Bool }
  //
  // on : String -> Json.Decoder a -> (a -> Signal.Message) -> Property




  dummyToBeRemoved : null
};
h$vdom = module.exports;
