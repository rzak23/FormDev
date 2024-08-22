function port_checker(){
    const detect = require('detect-port');
    const Swal = require('sweetalert2').default;
    var port = document.getElementById('port').value;

    if(isNullorEmpty(port)){
        Swal.fire(
            'Error',
            'Please input port number to check',
            'error'
        );
        return;
    }

    if(isNaN(port)){
        Swal.fire(
            'Error',
            'Port must be numbers',
            'error'
        );
        return;
    }

    detect(port).then(
        _port => {
            if(port == _port){
                Swal.fire(
                    'Available',
                    `Congrat's port ${port} can be used`,
                    'success'
                );
            }else{
                Swal.fire(
                    'Not Available',
                    `Sorry port ${port} already used, try port ${_port}`,
                    'error'
                );
            }
        }
    ).catch(err => {
        console.log(err);
    });
}

function isNullorEmpty(param){
    if(param == "" || param == null){
        return true;
    }else{
        return false;
    }
}