
# virtual-dom

Bindings to virtual-dom. Based on on Elm's virtual DOM.

Alternative to ghcjs-vdom.


## JS dependencies

A version of virtual-dom is commited into this repository (`jsbits/virtual-dom-out.js`).

To rebuild this with a newer version of virtual-dom:

1. Change the `virtual-dom` version number in `package.json` (this file is only there to state the
  version of virtual-dom).
2. Run `npm install`
3. Run `./rebuild.sh`
