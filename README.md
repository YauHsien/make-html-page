# make-html-page
An HTML builder using Gnu make.

### Usage

#### $ make scaffold prefix=`<prefix>`

The above command will create a new folder with name of `<prefix>` and do scaffolding. Without the option `prefix`, it uses `src` as default.

#### $ make page prefix=`<prefix>`

The above command will generate the page `./index.html` by scaffold. Without the option `prefix`, it uses `src` as default.

### Usage on Shell script

#### $ sh build.sh {create|new} `<prefix>`

#### $ sh build.sh {apply|generate|gen} `<prefix>`
