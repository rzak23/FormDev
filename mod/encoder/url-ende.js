initialize();

function initialize(){
    $(function(){
        $("input[data-bootstrap-switch]").each(function(){
            $(this).bootstrapSwitch('state');
        })
        document.getElementById('decode-box').style.display = "none";
    })
    
}

function changeBox(){
    var page = $('#page:checked').val();

    if(page){
        // $('#encode-box').show(500);
        // $('#decode-box').hide(500);
        document.getElementById('encode-box').style.display = "block";
        document.getElementById('decode-box').style.display = "none";
    }else{
        // $('#encode-box').hide(500);
        // $('#decode-box').show(500);
        document.getElementById('encode-box').style.display = "none";
        document.getElementById('decode-box').style.display = "block";
    }
}

function encodeurl(){
    var url = document.getElementById('urlenco').value;
    if(url == ""){
        Swal.fire(
            'Error',
            'Silahkan inputkan nilai terlebih dahulu',
            'error'
        );
        return;
    }
    var enc = encodeURIComponent(url);

    document.getElementById('outputenco').value = enc;
}

function decodeurl(){
    var url = document.getElementById('urldenco').value;
    if(url == ""){
        Swal.fire(
            'Error',
            'Silahkan inputkan nilai terlebih dahulu',
            'error'
        );
        return;
    }
    var dcd = decodeURIComponent(url);

    document.getElementById('outputdenco').value = dcd;
}

function reset_form(){
    document.getElementById('urlenco').value = "";
    document.getElementById('urldenco').value = "";
    document.getElementById('outputenco').value = "";
    document.getElementById('outputdenco').value = "";
}