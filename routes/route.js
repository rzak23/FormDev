class Route{
    loadPage(dirpage, dirmod = null){
        fetch(`./page/${dirpage}`)
            .then(response => response.text())
            .then(text => document.getElementById('page').innerHTML = text);

        this.remove_script_modular();
        if(dirmod){
            this.addScript(dirmod);
        }
    }

    remove_script_modular(){
        const element = document.getElementById('sc');
        if(element){
            element.remove();
        }
    }

    addScript(dirmod){
        const script = document.createElement('script');
        let esModule = this.isESModule(`./mod/${dirmod}`);
        if(esModule){
            script.type = 'module';
        }
        
        script.src = `mod/${dirmod}`;
        script.id = 'sc';
        document.body.appendChild(script);
    }

    isESModule(filepath){
        const fs = require('fs');
        const content = fs.readFileSync(filepath, 'utf-8');
        const hasImport = content.includes('import');

        return hasImport;
    }
}

module.exports = Route;