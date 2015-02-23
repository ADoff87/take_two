ko.bindingHandlers.markdown = {
    init: function(element, valueAccessor) {
        setHtmlFromMarkdown(element, ko.unwrap(valueAccessor()));
    },
    update: function(element, valueAccessor) {
        setHtmlFromMarkdown(element, ko.unwrap(valueAccessor()));
    }
}

function setHtmlFromMarkdown(element, mdText) {
    var htmlContent = markdown.toHTML(mdText);
    $(element).html(htmlContent);
}