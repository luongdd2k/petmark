$( document ).ready(function() {
    console.log( "ready!" );
    $('#suaThongTin').on('click', function() {
        return STTonClick(false);
    });
    $('#huySuaThongTin, #luuThongTin').on('click', function() {
        return STTonClick(true);
    });
});

var STTonClick = (disabled) => {
    if(disabled) {
        $('.form-container').addClass('disabled');
        $('#huySuaThongTin, #luuThongTin').addClass('hidden');
        $('#suaThongTin').removeClass('disabled');
    }
    else {
        $('.form-container').removeClass('disabled');
        $('#huySuaThongTin, #luuThongTin').removeClass('hidden');
        $('#suaThongTin').addClass('disabled');
    }
}