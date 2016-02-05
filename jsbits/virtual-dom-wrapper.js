
var VNode = require('virtual-dom/vnode/vnode');
var VText = require('virtual-dom/vnode/vtext');
var diff = require('virtual-dom/vtree/diff');
var patch = require('virtual-dom/vdom/patch');
var createElement = require('virtual-dom/vdom/create-element');
var isHook = require("virtual-dom/vnode/is-vhook");

// type Node
// type Property

function SoftSetHook(value) {
	this.value = value;
}

SoftSetHook.prototype.hook = function (node, propertyName) {
	if (node[propertyName] !== this.value) {
		node[propertyName] = this.value;
	}
};

// node : String -> List Property -> List Node -> Node
function node(tagName, properties, children, key, namespace) {

  var useSoftSet = (tagName === 'input' || tagName === 'textarea')
      && properties.value !== undefined && !isHook(properties.value);

	if (useSoftSet) {
    properties.value = new SoftSetHook(properties.value);
    if (!isHook(properties.value)) { throw "virtual-dom-wrapper.js: Not a hook" }
	}

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
