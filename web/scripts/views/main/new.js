function template(locals) {
var buf = [];
var jade_mixins = {};
var jade_interp;
;var locals_for_with = (locals || {});(function (v) {
buf.push("<div class=\"new\"><new></new>" + (jade.escape(null == (jade_interp = v) ? "" : jade_interp)) + "</div>");}.call(this,"v" in locals_for_with?locals_for_with.v:typeof v!=="undefined"?v:undefined));;return buf.join("");
}