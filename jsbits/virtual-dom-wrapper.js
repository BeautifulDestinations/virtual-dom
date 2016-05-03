
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
    if (!isHook(properties.value)) { throw "virtual-dom-wrapper.js: Not a hook"; }
	}

  return new VNode(tagName, properties, children, key, namespace);
}

// text : JSString -> Node
function text(string) {
		return new VText(string);
}

var vwidgetHook = function(f) { this.f = f; };

vwidgetHook.prototype.hook = function (node, propertyName, prevValue) {
  bddebug(['staticNode hook', node, propertyName, prevValue]);
	this.f(node, propertyName, prevValue);
};

var staticNodesCache = {};
var defaultStaticNodeIndex = 0;
var genNextStaticNodeId = function() {
	defaultStaticNodeIndex++;
	return "defaultStaticNodeIdPrefix" + defaultStaticNodeIndex.toString();
}

var _patch = function () {
	if (!window._patched) {
		var doc = window.document;
		var orig_getElementById = doc.getElementById;
		doc.getElementById = function(anId) {
			if (staticNodesCache[anId]) {
				return staticNodesCache[anId];
			} else {
				return orig_getElementById.bind(doc)(anId);
			};
		}
		window._patched = true;
	}
};

var staticNode = function (tagName, properties, children, key, ns, hookcb) {
	if (hookcb) { properties['xxx-hook'] = new vwidgetHook(hookcb); }

	var id_ = properties.attributes.id || genNextStaticNodeId();
	_patch();

	var rWidget = { type: 'Widget'};

	rWidget.init = function () {
		bddebug(['creating staticNode with', tagName, properties, children, key, ns]);
		if (staticNodesCache[id_]) {
			return staticNodesCache[id_];
		} else {
			var x = createElement(node(tagName, properties, children, key, ns));
			staticNodesCache[id_] = x;
			// staticNodesRoot.appendChild(x);
			return x;
		}
	};
	rWidget.update = function (prev, node) {
		bddebug(['staticNode update for', tagName, properties, children, key, ns]);
		bddebug(prev, node);
		if (staticNodesCache[id_]) {
			return staticNodesCache[id_];
		} else {
			return null; // tell virtual-dom not to touch anything
		}
	};
	rWidget.destroy = function (node) {
		bddebug(['staticNode destroy for ', tagName, properties, children, key, ns]);
		bddebug(node);
	};

	return rWidget;
};

module.exports = {
  VNode         : VNode,
  VText         : VText,
  diff          : diff,
  patch         : patch,
  createElement : createElement,
  isHook        : isHook,

  node          : node,
  text          : text,
	staticNode    : staticNode,

  // data Options =
  //     { stopPropagation : Bool
  //     , preventDefault : Bool }
  //
  // on : String -> Json.Decoder a -> (a -> Signal.Message) -> Property

  dummyToBeRemoved : null
};
h$vdom = module.exports;
