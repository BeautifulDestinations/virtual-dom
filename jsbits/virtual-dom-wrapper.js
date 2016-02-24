
var VNode = require('virtual-dom/vnode/vnode');
var VText = require('virtual-dom/vnode/vtext');
var diff = require('virtual-dom/vtree/diff');
var patch = require('virtual-dom/vdom/patch');
var createElement = require('virtual-dom/vdom/create-element');
var isHook = require("virtual-dom/vnode/is-vhook");

// type Node
// type Property

// window.beautifulDestinationsDebug = function(a) { console.log(a) }

function bddebug(a) {
	if (window.beautifulDestinationsDebug) {
    window.beautifulDestinationsDebug(a);
  }
}

function SoftSetHook(value) {
	this.value = value;
}

SoftSetHook.prototype.hook = function (node, propertyName) {
  bddebug(["Setting property with a hook", node, propertyName, this.value]);
	if (node[propertyName] !== this.value) {
		node[propertyName] = this.value;
	}
};

// node : String -> List Property -> List Node -> Node
function node(tagName, properties, children, key, namespace) {

	var hasPropValue = properties.value !== undefined && !isHook(properties.value);
	var hasAttrValue = properties.attributes && (properties.attributes.value !== undefined);
  var useSoftSet = (tagName === 'input' || tagName === 'textarea') && (hasPropValue || hasAttrValue);

  bddebug(["node/useSoftSet", useSoftSet, tagName, properties, children]);

	if (useSoftSet) {
		var val = hasAttrValue ? properties.attributes.value : properties.value;
    properties.value = new SoftSetHook(val);
    if (!isHook(properties.value)) { throw "virtual-dom-wrapper.js: Not a hook" }
	}

  return new VNode(tagName, properties, children, key, namespace);
}

// text : JSString -> Node
function text(string) {
		return new VText(string);
}

var vwidgetHook = function(f) { this.f = f; }
vwidgetHook.prototype.hook = function (node, propertyName, prevValue) {
  bddebug(['vwidget hook', node, propertyName, prevValue]);
	f(node, propertyName, prevValue);
};

var vwidget = function (tagName, properties, children, key, ns, hookcb) {
	if (hookcb) { properties['xxx-hook'] = new vwidgetHook(hookcb); }

	var rWidget = { type: 'Widget'};

	rWidget.init    = function () {
		bddebug('creating vwidget with', tagName, properties, children, key, ns)
		return createElement(node(tagName, properties, children, key, ns));
	};
	rWidget.update  = function (prev, node) {
		bddebug('vwidget update for', tagName, properties, children, key, ns);
		bddebug(prev, node);
		return null;
	};
	rWidget.destroy = function (node) {
		bddebug('vwidget destroy for ', tagName, properties, children, key, ns);
		bddebug(node);
	}

	return rWidget;
};



module.exports = {
  VNode : VNode,
  VText : VText,
  diff : diff,
  patch : patch,
  createElement : createElement,
  isHook : isHook,

  node : node,
  text : text,
	vwidget : vwidget,
  // data Options =
  //     { stopPropagation : Bool
  //     , preventDefault : Bool }
  //
  // on : String -> Json.Decoder a -> (a -> Signal.Message) -> Property




  dummyToBeRemoved : null
};
h$vdom = module.exports;
