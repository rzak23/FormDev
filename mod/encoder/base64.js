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

function encodep(){
    var text = document.getElementById('plain').value;
    if(text == ""){
        Swal.fire(
            'Error',
            'Silahkan inputkan nilai terlebih dahulu',
            'error'
        );
        return;
    }
    var enc = btoa(text);

    document.getElementById('outputchiper').value = enc;
}

function decodep(){
    var enc = document.getElementById('chiper').value;
    if(enc == ""){
        Swal.fire(
            'Error',
            'Silahkan inputkan nilai terlebih dahulu',
            'error'
        );
        return;
    }
    var txt = atob(enc);

    document.getElementById('outputplain').value = txt;
}

function reset_form(){
    document.getElementById('plain').value = "";
    document.getElementById('chiper').value = "";
    document.getElementById('outputchiper').value = "";
    document.getElementById('outputplain').value = "";
}