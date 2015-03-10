var gNs = gNs || {};

(function() {
    function dialog() {
        var self = this;

        var options = {
            showEasing: "swing",
            hideEasing: "linear"
        }

        self.showError = function(message) {
            options.showDuration = 300;
            toastr.options = options;
            toastr["error"](message);
        }

        self.showSuccess = function(message) {
            options.showDuration = 600;
            toastr.options = options;
            toastr["success"](message);
        }
    }

    gNs.dialog = dialog;
}())