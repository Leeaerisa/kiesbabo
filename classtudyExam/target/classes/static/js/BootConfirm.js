(function ($) {

    $.fn.BootConfirm = function (options) {
        // Establish our default settings
        var settings = $.extend({
            message: 'Are you sure about this ?',
            complete: null,
            validateForm:false
        }, options);

        var self = this;
        var cointainer = `<div class="modal fade" id="confirmBoot" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="confirmDeleteLabel" aria-hidden="true">
                          <div class="modal-dialog">
                            <div class="modal-content">
                              <div class="modal-header">
                              <h4 class="modal-title" id="confirmDeleteLabel" style="text-align: center" >확인</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close" aria-hidden="true">&times;</button>
                              </div>
                              <div class="modal-body">
                                	<p align="center" style="color: olive;">정말 취소 하시겠습니까?</p>
                              </div>
                              <div class="modal-footer" style="text-align: center;">
                                <button type="button" class="btn btn-info" data-dismiss="modal">Cancel</button>
                                <button type="button" class="btn btn-danger btn-ok" id="confirm">Ok</button>
                              </div>
                            </div>
                          </div>
                        </div>`;

        return this.each(function () {
            var self = this;
            var allow = false;
            $(this).click(function (e)
            {

                var eventname = e.type;
                if (!$('#confirmBoot').length) {
                    $('body').append(cointainer);
                }
                if (settings.message) {
                    $('#confirmBoot').find('.modal-body').text($(this).attr('data-confirm'));
                }
                if (!allow) {
                    e.preventDefault();
                    if (settings.validateForm)
                    {

                        if (typeof $(self).parents('form').valid() != "undefined") {
                            // safe to use the function
                            if (!$(self).parents('form').valid()) {
                                return false;
                            }
                        }

                    }
                    $('#confirmBoot').modal({ show: true });
                    $('#confirmBoot').find('.btn-ok').click(function () {
                        if ($.isFunction(settings.complete)) {
                            $.when(settings.complete.call(this, self)).done(function () {
                                $('#confirmBoot').modal("hide");
                                $('#confirmBoot').find('.btn-ok').off('click');
                            });
                        }
                        else
                        {
                            $('#confirmBoot').modal("hide");
                            $('#confirmBoot').find('.btn-ok').off('click');
                            allow = true;
                            $(this).off('click');
                            $(self).trigger(eventname);
                        }
                    });
                }
            });
        });
    }
}(jQuery));
