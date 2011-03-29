// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$.widget("custom.catcomplete", $.ui.autocomplete, {
  _renderMenu: function(ul, items) {
    var self = this,
		currentCategory = "";
		$.each(items, function(index, item) {
			if (item.category != currentCategory) {
				ul.append("<li class='ui-autocomplete-category'>" + item.category + "</li>");
				currentCategory = item.category;
			}
			self._renderItem(ul, item);
		});
	}
});
 
$(function() {
  $("#cd_name").catcomplete({
		source: "/cds/ac",
		minLength: 2,
		select: function(event, ui) {
			if(ui.item){ 
				$("#cd_name").val(ui.item.label);
				$("#id").val(ui.item.value);
				$("#cds_ap_form").attr("action", "/" + ui.item.category.toLowerCase() + "/" + ui.item.value);
			}
			return false;
		},
		focus: function(event, ui) { // triggered by keyboard selection
			if(ui.item){
				$("#cd_name").val(ui.item.label);
				$("#id").val(ui.item.value);
				$("#cds_ap_form").attr("action", "/" + ui.item.category.toLowerCase() + "/" + ui.item.value);
			}
			return false;
		},
		change: function(event, ui) { // called after the menu closes
			$("#cd_name").val("");
			$("#id").val("");
			return false;
		}
	}); 
});
